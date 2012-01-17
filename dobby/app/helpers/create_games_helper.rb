module CreateGamesHelper
  def edit_or_create(week)
    games = Game.find(:all, :conditions => "week = '#{week}' AND year = '#{@get_current_year}'")
    if games != [] && games.count > 0
      edit_create_game_path(week)
    else
      new_create_game_path(week)
    end
  end
end
