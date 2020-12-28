# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  Campaign.create(
    user_id: n + 1,
    title: "テストタイトル#{n + 1}",
    content: "テスト#{n + 1}",
    goal: 100000,
    campaign_for: "テスト機関#{n + 1}"
  )
end

TagMap.create(:campaign_id => 1, :tag_id => 1)
TagMap.create(:campaign_id => 2, :tag_id => 2)
TagMap.create(:campaign_id => 3, :tag_id => 3)

Tag.create(:name => '政治')
Tag.create(:name => '経済')
Tag.create(:name => 'スポーツ')
Tag.create(:name => '音楽')
Tag.create(:name => '娯楽・文化')
Tag.create(:name => 'テクノロジー')

Supporter.create(:campaign_id => 1, :user_id => 1)
Supporter.create(:campaign_id => 1, :user_id => 2)
Supporter.create(:campaign_id => 2, :user_id => 1)
Supporter.create(:campaign_id => 3, :user_id => 1)
Supporter.create(:campaign_id => 3, :user_id => 2)
Supporter.create(:campaign_id => 3, :user_id => 3)