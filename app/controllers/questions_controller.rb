class QuestionsController < ApplicationController

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		if @question.save
			flash[:success] = "you are successfully created a question"
			
		else
			render 'new'
		end
	end
	private
	def question_params
		params.require(:question).permit(:name, :option1, :option2, :option3, :correctoption)
	end
end