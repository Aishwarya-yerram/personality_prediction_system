class CreateQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
    	t.string :name
    	t.string :option1
    	t.string :option2
    	t.string :option3
    	t.string :correctoption
    end
  end
end
