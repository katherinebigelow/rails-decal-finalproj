class PostsController < ApplicationController
	def create
		@post = Post.new
		@post.user_id = current_user[:id]
		@post.save!
	end
end