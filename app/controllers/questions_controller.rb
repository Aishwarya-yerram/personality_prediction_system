class QuestionsController < ApplicationController

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		if @question.save
			flash[:success] = "you are successfully created a question"
			redirect_to questions_path
		else
			render 'new'
		end
	end

	def index
		@questions = Question.all
	end
	def test
		@questions = Question.all
		
	end


	private
	def question_params
		params.require(:question).permit(:name, :option1, :option2, :option3, :correctoption)
	end
end