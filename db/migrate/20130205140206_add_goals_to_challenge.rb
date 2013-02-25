class AddGoalsToChallenge < ActiveRecord::Migration
  def change
    remove_column :challenges, :description
	add_column :challenges, :goal, :text
    add_column :challenges, :needs, :text
    add_column :challenges, :detail, :text
    add_column :challenges, :description, :text
  end
end
