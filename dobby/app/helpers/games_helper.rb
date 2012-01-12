module GamesHelper
  def get_team_name(teamNumber)
    team = Team.find(teamNumber)
    team.name
  end 
end
