class AddCourseIdToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :course_id, :integer
  end
end
