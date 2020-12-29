class AddColumnUserToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username_last, :string, :after => :id
    add_column :users, :username_first, :string, :after => :username_last
    add_column :users, :gender, :integer, :after => :username_first
  end
end
