class AddColumnAvatarToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :avatar, :string, null: true, after: :gender
  end
end
