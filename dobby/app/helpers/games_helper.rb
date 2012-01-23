module GamesHelper
  def get_team_name(teamNumber)
    team = Team.find(teamNumber)
    team.name
  end 
  
  def disable_submit?
    week = Week.find(@game.week_id)
    if week.week != @get_current_week
      false
    else
      true
    end
  end
end
