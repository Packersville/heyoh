class GamesController < ApplicationController
  before_filter :get_current_week
  
  def index
    @games = Game.where("week= '#{@get_current_week}'")
  end
  
  def create
    @userspicks = current_user.users_picks.build(params[:users_picks])
    @users_pick.save
  end
end
