class CreateJob < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
    	t.string :company_name
    	t.string :title
    	t.string :description
    end
  end
end
