class AchievementsController < ApplicationController

  def fivePosts
    @achievement = Achievement.New
    @achievement.user_id = params[user_id]
    @achievement.title = "Five!!!!!"
    @achievement.description = "Made five posts."
    @achievement.save
	end

  def tenPosts
    @achievement = Achievement.New
    @achievement.user_id = params[user_id]
    @achievement.title = "Five!!!!!"
    @achievement.description = "Made five posts."
    @achievement.save
	end

  def fiveMinutes
    @achievement = Achievement.New
    @achievement.user_id = params[user_id]
    @achievement.title = "Five!!!!!"
    @achievement.description = "Made five posts."
    @achievement.save
	end


end
