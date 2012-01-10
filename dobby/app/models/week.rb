class Week < ActiveRecord::Base
  belongs_to :season
  has_many :games
end
