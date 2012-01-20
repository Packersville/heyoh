class WeeksController < ApplicationController
  before_filter :get_current_year
  load_and_authorize_resource
  
  def index
    @weeks = Week.where("year = '#{@get_current_year}'")
    if @weeks == [] || @weeks.nil?
      @weeks = Array.new(17) { Week.new(:year => @get_current_year) }
      @weeks.each_with_index do |week, index|
	week.week = index + 1
      end
      @weeks.each(&:save!)
    end
  end
  
  def edit 
    @teams = Team.all
    if !@week.games.present?
      16.times { @week.games.build }
      @week.games.each_with_index do |game, index|
	game.index = index + 1
      end
      @week.games.each(&:save!)
    end
  end
  
  def update
    @teams = Team.all
    @week = Week.find(params[:id])
    if @week.update_attributes(params[:week])
      redirect_to edit_week_path(params[:id])
    else
      render 'edit'
    end
  end
end
