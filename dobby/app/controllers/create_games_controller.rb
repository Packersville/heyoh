class CreateGamesController < ApplicationController
  before_filter :get_current_week, :get_current_year
  
  def edit
    @teams = Team.all
    create_games_if_none
  end
  
  def update
    @games = Game.update(params[:games].keys, params[:games].values).reject { |g| g.errors.empty? }
    redirect_to edit_create_game_path(@get_current_week)
  end
  
  protected
  def create_games_if_none
    games = Game.where("week_id = #{params[:id]}")
    if games == [] 
      t = Time.now
      @games = Array.new(16) { Game.new(:week_id => params[:id], :time => t.strftime("%I:%M%p")) }
      @games.each_with_index do |game, index|
	game.index = index + 1
      end
      @games.each(&:save!)
    else
      @games = games
    end
  end
end
