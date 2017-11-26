class CreateJoinTableBoardUser < ActiveRecord::Migration[5.1]
  def change
  	create_table :boards_users, id: false do |t|
  	  t.belongs_to :board, index: true
  	  t.belongs_to :user, index: true
  	end
  end
end
