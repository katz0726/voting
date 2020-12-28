class CreateTagMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_maps do |t|
      t.integer :campaign_id, null: false
      t.integer :tag_id, null: false

      t.timestamps
    end
  end
end
