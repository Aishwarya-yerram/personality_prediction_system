class Addtypetoquestions < ActiveRecord::Migration[5.2]
  def change
  	add_column :questions, :type, :string
  end
end
