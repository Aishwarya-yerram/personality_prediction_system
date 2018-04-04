class Addroletouser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :role, :boolean, default: 0
  end
end
