class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.text :notes
      t.integer :status

      t.timestamps
    end
  end
end
