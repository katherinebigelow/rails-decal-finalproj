class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def ownpage
		@user = User.find(params[:id])
		
	end
end