class AddSkillToUpload < ActiveRecord::Migration[5.2]
  def change
  	add_column :skills, :upload_id, :integer
  end
end
