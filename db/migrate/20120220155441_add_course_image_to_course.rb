class AddCourseImageToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :course_image, :string

  end
end
