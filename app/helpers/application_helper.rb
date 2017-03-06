module ApplicationHelper
	def avatar_url(user)
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase
		if user.image
			user.image
		else
		"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
		end
	end
	#
	# def profile_pic_url(user)
	# 	@user_logged = User.find_by_id(current_user)
	# 	@profile_pic = @user_logged.image, "%%%%%%%%%%%%%%%%%"
	# end
end
