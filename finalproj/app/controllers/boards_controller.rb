class BoardsController < ApplicationController
	def new
		@board = Board.new
	end

	def create
		@board = Board.new
		@board.update(board_params)
		current_user.boards << @board
		if @board.save
			redirect_to boards_show_path(@board)
		end
	end

	def index
		@boards = Board.page(params[:page])
	end

	def show
		@board = Board.find(params[:id])
		@posts =  @board.posts.where(parent_id: nil).page(params[:page])
	end

	def subscribe
		@board = Board.find(params[:board])
		#debug test
		if current_user.boards.include?(@board)
			redirect_to '/'
		else
			current_user.boards << @board
			redirect_to boards_show_path(@board)
		end
	end

	def unsubscribe
		@board = Board.find(params[:board])
		current_user#boards.delete(@board)
		current_user.save
		redirect to 'root'
	end

	private

	def board_params
		params.require(:board).permit(:name)
	end
end
