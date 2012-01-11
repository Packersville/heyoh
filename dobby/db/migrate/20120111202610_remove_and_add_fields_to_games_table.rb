class RemoveAndAddFieldsToGamesTable < ActiveRecord::Migration
  def up
    remove_column :games, :week_id
    add_column :games, :week, :integer
    add_column :games, :date, :date
    add_column :games, :time, :time
    add_column :games, :year, :integer
    add_column :games, :spread, :integer
    add_column :games, :index, :integer
  end

  def down
    add_column :games, :week_id, :integer
    remove_column :games, :week
    remove_column :games, :date
    remove_column :games, :time
    remove_column :games, :year
    remove_column :games, :spread
    remove_column :games, :index
  end
end
