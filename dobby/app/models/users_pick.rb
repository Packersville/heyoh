class UsersPick < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  has_many :games
end
