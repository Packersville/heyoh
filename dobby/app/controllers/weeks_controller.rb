class WeeksController < ApplicationController
  before_filter :get_current_season, :get_current_week
  
  def show
    @week_games = Game.where("week_id = '#{@get_current_week}'")
  end
end
