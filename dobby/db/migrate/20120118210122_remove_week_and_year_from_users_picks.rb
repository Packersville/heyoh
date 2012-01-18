class RemoveWeekAndYearFromUsersPicks < ActiveRecord::Migration
  def up
    remove_column :users_picks, :year
    remove_column :users_picks, :week
  end

  def down
    add_column :users_picks, :year, :integer
    add_column :users_picks, :week, :integer
  end
end
