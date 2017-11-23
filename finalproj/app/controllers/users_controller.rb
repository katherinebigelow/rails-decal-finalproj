class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def ownpage
		@user = User.find(params[:user_id])	
	end
end