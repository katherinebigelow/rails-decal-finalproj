class Board < ApplicationRecord
	has_many :posts
	has_and_belongs_to_many :users
	paginates_per 10
end
