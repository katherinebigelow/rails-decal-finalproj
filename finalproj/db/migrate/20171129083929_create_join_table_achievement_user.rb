class CreateJoinTableAchievementUser < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements_users, id: false do |t|
  	  t.belongs_to :achievement, index: true
  	  t.belongs_to :user, index: true
    end
  end
end
