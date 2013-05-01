class AddChallengepikToBadge < ActiveRecord::Migration
  def change
    add_column :badges, :challengepik, :string
  end
end
