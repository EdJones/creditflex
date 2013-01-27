class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.string :credit
      t.string :badge_name
      t.integer :badge_id

      t.timestamps
    end
  end
end
