class AddChallengepicToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :challengepic, :string
  end
end
