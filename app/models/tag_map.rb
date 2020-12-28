class TagMap < ApplicationRecord
  belongs_to :campaign
  belongs_to :tag
  validates :campaign_id, presence:true
  validates :tag_id, presence:true
end
