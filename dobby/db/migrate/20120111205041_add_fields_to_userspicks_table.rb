class AddFieldsToUserspicksTable < ActiveRecord::Migration
  def change
    remove_column :users_picks, :pick
    remove_column :users_picks, :game_id
    add_column :users_picks, :game1, :integer
    add_column :users_picks, :game2, :integer
    add_column :users_picks, :game3, :integer
    add_column :users_picks, :game4, :integer
    add_column :users_picks, :game5, :integer
    add_column :users_picks, :game6, :integer
    add_column :users_picks, :game7, :integer
    add_column :users_picks, :game8, :integer
    add_column :users_picks, :game9, :integer
    add_column :users_picks, :game10, :integer
    add_column :users_picks, :game11, :integer
    add_column :users_picks, :game12, :integer
    add_column :users_picks, :game13, :integer
    add_column :users_picks, :game14, :integer
    add_column :users_picks, :game15, :integer
    add_column :users_picks, :game16, :integer
    add_column :users_picks, :year, :integer
    add_column :users_picks, :week, :integer
  end
end
