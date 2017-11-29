class PostsController < ApplicationController
	def new
		@post = Post.new
		@current_board = Board.find(params[:board])
	end

	def achieve(user, achievement)
		prize = Achievement.where(name: achievement).first
		if not user.achievements.include?(prize)
			user.achievements << prize
			if user == current_user
				flash[:success] = "Achievement unlocked: " + achievement
			end
		end
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
		i = current_user.posts.length
		if i >= 5
			achieve current_user, "FIVE"
		end
		if i>= 10
			achieve current_user, "wow ten!!!"
		end
		if @post.parent_id
			redirect_to posts_show_path(id: @post.parent_id)
		else
			redirect_to boards_show_path(id: @board.id)
		end
	end

	def show
		@post = Post.find(params[:id])
		@board = Board.find(@post.board_id)
		@comments = Post.where({parent_id: params[:id]}).page(params[:page]).per(5)
	end

	def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to boards_show_path(id: @post.board_id)
	end

	def like
		@post = Post.find(params[:id])
		@post.likes += 1
		@author = User.find(@post.user_id)
		@author.point += 1
		achieve @author,"Likeable"

		@favorite = @post.favorites.create(user_id: current_user.id, post_id: @post.id)
		@author.save
		@post.save

		red_id = @post.parent_id
		if red_id == nil
			red_id = @post.id
		end
		redirect_to posts_show_path(id: red_id)
	end

	def unlike
		@post = Post.find(params[:id])
		@post.likes -= 1
		if @post.likes<0
			@post.likes = 0
		end
		@author = User.find(@post.user_id)
		@author.point -= 1
		achieve @author, "Unlikeable"
		@favorite = @post.favorites.where(user_id: current_user.id).delete_all
		@author.save
		@post.save

		red_id = @post.parent_id
		if red_id == nil
			red_id = @post.id
		end
		redirect_to posts_show_path(id: red_id)
	end

	private
	def post_params
		params.require(:post).permit(:title, :content)
	end
end
