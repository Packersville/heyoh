class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :week_id
      t.integer :awayTeam
      t.integer :homeTeam

      t.timestamps
    end
  end
end
