class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :user_id
      t.string :district
      t.string :school
      t.string :subject
      t.string :specialty
      t.text :bio
      t.text :notes

      t.timestamps
    end
  end
end
