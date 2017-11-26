class PostsController < ApplicationController
	def new
		@post = Post.new
		@current_board = Board.find(params[:board])
	end

	def create
		@post = Post.new
		@board = Board.find(params[:id])
		@post.board_id = @board.id
		@post.likes = 0
		@post.update(post_params)
		#idk whats going on with booleans but i havent gotten it to work without doing this
		if params[:comment] == 'true'
			@post.parent_id = params[:parent_id]
		else
			@post.parent_id = nil
		end
		@post.user_id = current_user.id
		@post.save
		current_user.posts << @post
		if @post.parent_id
			redirect_to posts_show_path(id: @post.parent_id)
		else
			redirect_to boards_show_path(id: @board.id)
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def like
		@post = Post.find(params[:id])
		@post.likes += 1
		@author = User.find(@post.user_id)
		@author.point += 1
		@favorite = @post.favorites.create(user_id: current_user.id, post_id: @post.id)
		@author.save
		@post.save
		redirect_to posts_show_path(id: @post.id)
	end

	private
	def post_params
		params.require(:post).permit(:title, :content)
	end
end