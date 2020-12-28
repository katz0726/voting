class AddColumnUserIdToSupporters < ActiveRecord::Migration[5.2]
  def change
    add_column :supporters, :user_id, :integer, :after => :campaign_id
  end
end
