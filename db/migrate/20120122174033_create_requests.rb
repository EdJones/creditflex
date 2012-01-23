class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.text :goals
      t.integer :portfolio_id
      t.text :help_needed

      t.timestamps
    end
  end
end
