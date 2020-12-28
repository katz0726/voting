class RemoveColumnFromTags < ActiveRecord::Migration[5.2]
  def up
    remove_column :tags, :campaign_id, :integer
  end

  def down
    add_column :tags, :campaign_id, :integer
  end
end
