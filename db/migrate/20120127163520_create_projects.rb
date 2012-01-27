class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :student_id
      t.integer :teacher_id
      t.text :summary
      t.text :status
      t.integer :portfolio_id

      t.timestamps
    end
  end
end
