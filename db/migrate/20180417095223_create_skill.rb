class CreateSkill < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
    	t.string :name
    	t.decimal :weight
    end
  end
end
