class ChangeTimeToVarcharForGamesTable < ActiveRecord::Migration
  def up
    change_table :games do |t|
      t.change :time, :string
    end
  end
  
  def down
    change_table :games do |t|
      t.change :time, :time
    end
  end
end
