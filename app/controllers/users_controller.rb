class UsersController < ApplicationController

	def dashboard

	end

	def profile
		@user = User.find_by(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
  	if @user.update(user_params)
			flash[:success] ="Added successfully" 
			redirect_to profile_user_path(@user)
  	else 
  		render 'edit'
  	end
  end
  private
  def user_params
  	 params.require(:user).permit(:email,:name,:dob,:tel,:profession, :address,:city,:zip)
  end

end
