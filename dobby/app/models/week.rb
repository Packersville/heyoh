class Week < ActiveRecord::Base
  has_many :games
  has_many :users_picks
  has_many :users_lines
  accepts_nested_attributes_for :games, :allow_destroy => true 
  
  validate :saved_games_unique
  
  def saved_games_unique
    teams = []
    valid = true
    self.games.each do |game|
      if game.away_team_id != nil && game.home_team_id
	if teams.include?(game.away_team_id)
	  valid = false
	  game.errors.add(:away_team_id, 'is already used')
	else
	  teams << game.away_team_id
	end
	if teams.include?(game.home_team_id)
	  valid = false
	  game.errors.add(:home_team_id, 'is already used')
	else
	  teams << game.home_team_id 
	end
      end
    end
    p teams
    if valid == false
      self.errors.add(:base, "Duplicate team saved.")
    end
  end
       
end
