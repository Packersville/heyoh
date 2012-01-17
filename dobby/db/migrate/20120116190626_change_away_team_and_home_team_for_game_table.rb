class ChangeAwayTeamAndHomeTeamForGameTable < ActiveRecord::Migration
  def up
    rename_column :games, :awayTeam, :away_team_id
    rename_column :games, :homeTeam, :home_team_id
  end
end
