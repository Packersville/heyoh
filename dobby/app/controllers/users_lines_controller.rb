class UsersLinesController < ApplicationController
  before_filter :get_current_year
  
  def index
    @weeks = Week.where("year = '#{@get_current_year}'")
  end
end
