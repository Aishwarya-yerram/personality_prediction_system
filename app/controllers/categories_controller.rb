class CategoriesController < ApplicationController

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			flash[:success] = "you have successfully added a category"
			redirect_to categories_path
		else
			render 'new'
		end
	end

	def index
		@category = Category.all
	end

	private
	def category_params
		params.require(:category).permit(:category_type)
	end
end