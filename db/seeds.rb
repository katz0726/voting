# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Campaign.create(:user_id => 1, :title => 'テストタイトル１', :content => 'テスト１', :goal => 100000, :campaign_for => 'テスト機関１')
Campaign.create(:user_id => 2, :title => 'テストタイトル２', :content => 'テスト２', :goal => 100000, :campaign_for => 'テスト機関２')
Campaign.create(:user_id => 3,:title => 'テストタイトル３', :content => 'テスト３', :goal => 100000, :campaign_for => 'テスト機関３')

TagMap.create(:campaign_id => 1, :tag_id => 1)
TagMap.create(:campaign_id => 2, :tag_id => 2)
TagMap.create(:campaign_id => 3, :tag_id => 3)

Tag.create(:name => '政治')
Tag.create(:name => '経済')
Tag.create(:name => 'スポーツ')

Supporter.create(:campaign_id => 1, :user_id => 1)
Supporter.create(:campaign_id => 1, :user_id => 2)
Supporter.create(:campaign_id => 2, :user_id => 1)
Supporter.create(:campaign_id => 3, :user_id => 1)
Supporter.create(:campaign_id => 3, :user_id => 2)
Supporter.create(:campaign_id => 3, :user_id => 3)