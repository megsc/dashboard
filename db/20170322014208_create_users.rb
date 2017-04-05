class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :userID
      t.string :userName
      t.string :password
      t.integer :courseID

      t.timestamps
    end
  end
end
