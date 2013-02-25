class AddChallengeIdToWish < ActiveRecord::Migration
  def change
    add_column :wishes, :challenge_id, :integer
  end
end
