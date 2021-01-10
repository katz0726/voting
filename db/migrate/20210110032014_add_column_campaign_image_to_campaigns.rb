class AddColumnCampaignImageToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :campaign_image, :string, null: true, after: :gender
  end
end
