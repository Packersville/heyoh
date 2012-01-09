class AddFirstNameLastNameToUsersTable < ActiveRecord::Migration
  def self.up
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
  end
  
  def self.down
    remove_column :users, :firstName
    remove_column :users, :lastName 
  end
end
