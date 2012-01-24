class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  protected
  def after_sign_in_path_for(resource)
    user_path(current_user.id)
  end 
  
  def get_current_season
    @get_current_season = 1
  end
  
  def get_week
    week = Week.where("year = #{get_current_year}").last
    if week.nil?
      @get_week = 1
    else
      @get_week = week.week + 1
    end
  end
  
  def get_current_week
    @get_current_week = 1
  end
  
  def get_current_year
    @get_current_year = 2012
  end
end
