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

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		if @category.update(category_params)
			flash[:success] = "success"
			redirect_to categories_path
		else
			render 'edit'
		end
	end

	def index
		@category = Category.all.order(category_type: :asc)
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to request.referrer
	end
	private
	def category_params
		params.require(:category).permit(:category_type)
	end
end