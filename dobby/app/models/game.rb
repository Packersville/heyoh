class Game < ActiveRecord::Base
  belongs_to :team
  belongs_to :users_pick
  has_many :users_picks, :order => "index DESC"
end
