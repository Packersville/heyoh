class DeleteWeekAndYearFromGamesTable < ActiveRecord::Migration
  def up
    remove_column :games, :week
    remove_column :games, :year
  end

  def down
    add_column :games, :week, :integer
    add_column :games, :year, :integer
  end
end
