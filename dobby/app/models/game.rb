class Game < ActiveRecord::Base
  belongs_to :away_team, :class_name => Team.new
  belongs_to :home_team, :class_name => Team.new
  belongs_to :week
  has_many :users_picks
  has_many :users_picks, :order => "index DESC"
end