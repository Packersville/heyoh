class AddWeekIdFromWeeksTableToGamesTable < ActiveRecord::Migration
  def change
    add_column :games, :week_id, :integer
  end
end
