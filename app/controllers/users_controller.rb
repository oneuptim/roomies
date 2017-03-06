class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@user_logged = User.find_by_id(current_user)
		@rooms = @user.rooms
		# @profile_pic = @user_logged.image, "%%%%%%%%%%%%%%%%%"
	end

	def update
		@user = User.find_by_id(current_user)
		check = @user.update(user_params)
		redirect_to "/users/edit/", notice: "Profile pic updated..."
	end

	def profile_pic_url(user)
		@user_logged = User.find_by_id(current_user)
		# @profile_pic = @user_logged.image, "%%%%%%%%%%%%%%%%%"
	end

end

private
def user_params
  params.require(:user).permit(:profile_pic)
end
