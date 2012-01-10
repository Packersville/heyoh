class WeeksController < ApplicationController
  before_filter :get_current_season
  
  def index
    @weeks = Week.where("season_id = '#{@get_current_season}'")
  end
end
