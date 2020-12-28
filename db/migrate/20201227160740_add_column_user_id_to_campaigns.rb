class AddColumnUserIdToCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :campaigns, :user_id, :integer, :after => :id
  end
end
