class UsersPick < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  belongs_to :game
  belongs_to :week
end
