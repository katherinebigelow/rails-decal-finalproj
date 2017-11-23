class AddBoardRefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :board, foreign_key: true
  end
end
