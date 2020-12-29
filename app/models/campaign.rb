class Campaign < ApplicationRecord
  belongs_to :user
  
  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps
  has_many :supporters, dependent: :destroy
  has_many :supported_users, through: :supporters, source: :user
  

  has_many :comments, dependent: :destroy

  def self.search(condition)
    return Campaign.all unless condition

    case condition
      when 'popular' then
        Campaign.find_by_sql(create_popular_campaign_sql)
      when 'latest' then
        Campaign.order(updated_at: 'desc')
      when 'succeed' then
        Campaign.find_by_sql(create_succeed_campaign_sql)
    end
  end

  def self.create_popular_campaign_sql
    sql = <<-"EOS"
      SELECT *
      FROM campaigns c
      INNER JOIN supporters s
      ON c.id = s.campaign_id
      GROUP BY c.id
      ORDER BY count(*) desc;
    EOS
  end

  def self.create_succeed_campaign_sql
    sql = <<-"EOS"
      SELECT *
      FROM
        campaigns c1
      WHERE
        c1.goal <= (
          SELECT COUNT(*)
          FROM
            campaigns c2
          INNER JOIN supporters s2
          ON c2.id = s2.campaign_id
          WHERE c1.id = c2.id
          GROUP BY c2.id
        )
        ORDER BY c1.updated_at desc;
    EOS
    sql
  end
end
