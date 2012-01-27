class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :user_id
      t.integer :teacher_id
      t.integer :year
      t.text :about

      t.timestamps
    end
  end
end
