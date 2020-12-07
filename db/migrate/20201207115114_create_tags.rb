class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.integer :campaign_id, null: false
      t.string :name, null: false

      t.timestamps
      t.references :campaign, foreign_key: true
    end
  end
end
