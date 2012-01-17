class WeeksController < ApplicationController
  before_filter :get_current_week, :get_current_year
  
  def index
    @weeks = Week.where("year = '#{@get_current_year}'")
  end
  
  def show 
    get_user_picks
    @week = Week.find(params[:id])
    p @week.games
  end
  
  def create
    remove_user_picks_if_present
    @userspicks = current_user.users_picks.build(params[:users_picks])
    @userspicks.week = @get_current_week
    @userspicks.save
    redirect_to games_path
  end
  
  protected
  def get_user_picks
    @users_picks = UsersPick.where("user_id = '#{current_user.id}' AND week = '#{@get_current_week}'").first
  end
  
  def remove_user_picks_if_present
    picks =  UsersPick.where("user_id = '#{current_user.id}' AND week = '#{@get_current_week}'").first
    if picks.present?
      UsersPick.find(picks.id).destroy
    end
  end
end
