class UsersController < ApplicationController

	def dashboard

	end
	def adminDashBoard

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

  	def shortlist
  		@users = User.where(status: "Not Accepted")
  	end

  	def shortlist_update
  		@user = User.find(params[:id])
  		@user.update(status: "Shortlisted")
  		flash[:success] = "You have successfully shortlited the candidate"
  		redirect_to users_path
  	end

  	def index
  		@users = User.all
  	end
  	

  private
  def user_params
  	 params.require(:user).permit(:email,:name,:dob,:tel,:profession, :address,:city,:zip, :role,:status)
  end

end
