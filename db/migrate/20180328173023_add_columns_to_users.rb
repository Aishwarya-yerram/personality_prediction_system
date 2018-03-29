class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users,:name,:string
  	add_column :users,:dob,:date
  	add_column :users,:tel,:bigint
  	add_column :users,:profession,:string
  	add_column :users,:address,:string
  	add_column :users,:city,:string
  	add_column :users,:zip,:bigint

  end
end
