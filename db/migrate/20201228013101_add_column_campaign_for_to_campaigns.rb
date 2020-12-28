class AddColumnCampaignForToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :campaign_for, :string, :after => :goal
  end
end
