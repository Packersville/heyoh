class CreateUsersPicks < ActiveRecord::Migration
  def change
    create_table :users_picks do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :pick

      t.timestamps
    end
  end
end
