class Week < ActiveRecord::Base
  has_many :games
  has_many :users_picks
  accepts_nested_attributes_for :games, :allow_destroy => true
end
