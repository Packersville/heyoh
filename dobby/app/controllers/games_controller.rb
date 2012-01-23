class GamesController < ApplicationController
  before_filter :get_current_year, :get_current_week
  load_and_authorize_resource
  
  def index
    @weeks = Week.where("year = '#{@get_current_year}'")
  end
  
  def edit
    @week = Week.find(params[:id])
    @games = @week.games
    @users_picks = UsersPick.where("user_id = #{current_user.id} AND week_id = #{params[:id]}").first
  end
  
  def update
    @users_picks = UsersPick.where("user_id = #{current_user.id} AND week_id = #{params[:id]}").first
    if @users_picks.nil?
      @users_picks = current_user.users_picks.build(params[:users_picks])
      @users_picks.week_id = params[:id]
      if @users_picks.save
       redirect_to edit_game_path(params[:id])
      else
	render 'edit'
      end
    else
      if @users_picks.update_attributes(params[:users_picks])
	redirect_to edit_game_path(params[:id])
      else
	render 'edit'
      end
    end
  end
end
