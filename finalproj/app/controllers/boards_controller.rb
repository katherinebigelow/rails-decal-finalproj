class BoardsController < ApplicationController
	def create
		@board = Board.new
		@board.user_id = current_user[:id]
		@board.save!
	end

	def index
		@boards = Board.all
	end
end