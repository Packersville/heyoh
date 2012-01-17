class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :week
      t.integer :year

      t.timestamps
    end
  end
end
