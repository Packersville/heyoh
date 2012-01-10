class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :season_id
      t.integer :weekCount

      t.timestamps
    end
  end
end
