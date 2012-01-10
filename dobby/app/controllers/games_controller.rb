class GamesController < ApplicationController
  before_filter :get_current_week
  
  def index
    @games = Game.where("week_id = '#{@get_current_week}'")
  end
end
