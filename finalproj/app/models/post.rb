class Post < ApplicationRecord
	
	belongs_to :board
	belongs_to :user
	has_many :favorites
	has_many :users, :through => :favorites
	has_many :comments, class_name: "Post", foreign_key: "parent_id"
	belongs_to :parent, class_name: "Post", optional: true
end
