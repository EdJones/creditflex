class ChangeTos < ActiveRecord::Migration
  def up
  
    remove_column :users, :User
	change_column :users, :tos, :boolean, :default => false

  end

  def down
  
  end
end
