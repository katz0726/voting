# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

6.times do |n|
  user = User.create!(
    :username_last => "一般",
    :username_first => "ユーザ#{n + 1}",
    :gender => rand(1..2),
    :avatar => open("./db/fixtures/user_icon_sample.jpg"),
    :email => "user#{n + 1}@gmail.com",
    :password => "P@ssw0rd#{n + 1}")
end

6.times do |n|
  Campaign.create!(
    user_id: n + 1,
    title: "テストタイトル#{n + 1}",
    content: "テスト#{n + 1}",
    goal: 100000,
    campaign_image: open("./db/fixtures/sky.jpg"),
    campaign_for: "テスト機関#{n + 1}",
    achieved: 0
  )
end

Tag.create!(:name => '政治')
Tag.create!(:name => '経済')
Tag.create!(:name => 'スポーツ')
Tag.create!(:name => '音楽')
Tag.create!(:name => '娯楽・文化')
Tag.create!(:name => 'テクノロジー')

TagMap.create!(:campaign_id => 1, :tag_id => 1)
TagMap.create!(:campaign_id => 2, :tag_id => 2)
TagMap.create!(:campaign_id => 3, :tag_id => 3)
TagMap.create!(:campaign_id => 4, :tag_id => 4)
TagMap.create!(:campaign_id => 5, :tag_id => 5)
TagMap.create!(:campaign_id => 6, :tag_id => 6)

Campaign.all.each_with_index do |campaign, i|
  campaign.supporters.create!(
    campaign_id: i + 1,
    user_id: i + 1,
    visible: 1
  )
end

# Campaign.all.each_with_index do |campaign, i|
#   campaign.comments.create!(
#     campaign_id: i + 1,
#     user_id: i + 1,
#     content: "テストコメント#{i + 1}"
#   )
# end