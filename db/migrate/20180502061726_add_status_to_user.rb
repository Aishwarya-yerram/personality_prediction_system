class AddStatusToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :status, :string , default: "Not Accepted"
  end
end
