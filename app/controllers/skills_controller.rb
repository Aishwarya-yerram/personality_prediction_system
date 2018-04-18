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
		@skills = Skill.all
	end

	def edit
		end

	private
	def skills_params
		params.require(:skill).permit(:name, :weight)
	end
end