class AddColumnVisibleToSupporters < ActiveRecord::Migration[5.2]
  def change
    add_column :supporters, :visible, :boolean, null: false, default: false, after: :campaign_id
  end
end
