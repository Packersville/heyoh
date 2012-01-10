class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  def after_sign_in_path_for(resource)
    user_path(current_user.id)
  end 
  
  def get_current_season
    @get_current_season = 1
  end
  
  def get_current_week
    @get_current_week = 1
  end
end
