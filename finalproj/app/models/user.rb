class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, uniqueness: true
  has_many :posts
  has_many :favorites
  has_and_belongs_to_many :boards
  has_many :achievements

end
