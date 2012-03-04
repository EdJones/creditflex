class AddVotesToRequests < ActiveRecord::Migration
  def change
   add_column :requests, :up_votes, :integer, :null => false, :default => 0

    add_column :requests, :down_votes, :integer, :null => false, :default => 0

  end
end
