class AddUserNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :userName, :string
    add_index :users, :userName, unique: true
  end
end
