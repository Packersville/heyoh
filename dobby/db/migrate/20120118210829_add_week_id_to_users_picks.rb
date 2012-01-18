class AddWeekIdToUsersPicks < ActiveRecord::Migration
  def change
    add_column :users_picks, :week_id, :integer
  end
end
