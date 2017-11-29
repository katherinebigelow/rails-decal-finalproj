class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def ownpage
		@user = User.find(params[:user_id])
		@userPosts = @user.posts.where(parent_id: nil).page(params[:page])
	end
end
