class SkillsController < ApplicationController
	def new
		@skill = Skill.new
	end

	def create
		@skill = Skill.new(skills_params)
		if @skill.save
			flash[:success] = 'you have successfully added the skill'
			redirect_to skills_path
		else
			render 'new'
		end
	end

	def index
		@skills = Skill.all.order(name: :asc)
	end

	def edit
		@skill = Skill.find(params[:id])
	end

	def update
		@skill = Skill.find(params[:id])
		if @skill.update(skills_params)
			flash[:success] = "Successfully Updated!"
			redirect_to skills_path
		else
			render 'edit'
		end
	end

	def destroy
		@skill = Skill.find(params[:id])
		@skill.destroy!
		redirect_to request.referrer
	end


	private
	def skills_params
		params.require(:skill).permit(:name, :weight)
	end
end