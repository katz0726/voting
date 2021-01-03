class AddColumnAchievedToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :achieved, :boolean, null: false, default: false, after: :campaign_for
  end
end
