class CreateEchos < ActiveRecord::Migration
  def change
    create_table :echos do |t|
      t.integer :wish_id
      t.integer :user_id

      t.timestamps
    end
  end
end
