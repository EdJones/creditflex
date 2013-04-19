class CreateDares < ActiveRecord::Migration
  def change
    create_table :dares do |t|
      t.integer :user_id
      t.string :message
      t.integer :wish_id
      t.string :challengee_twitid
      t.string :challengee_email

      t.timestamps
    end
  end
end
