class HomeController < ApplicationController
  def index
    if current_user
      @userBoards = current_user.boards.page(params[:page])
    else
      @userBoards = nil
    end
  end

end
