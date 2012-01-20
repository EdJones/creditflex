class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.text :notes
      t.string :plan_url

      t.timestamps
    end
  end
end
