class DropTops < ActiveRecord::Migration[5.2]
  def change
    drop_table :tops do |t|
      t.timestamps
    end
  end
end
