class FixUsers < ActiveRecord::Migration[5.0]
  def change
	change_table :users do |t|
		t.string :userID
		t.integer :userAccess
		t.integer :courseID
	end
  end
end
