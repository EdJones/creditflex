class AddCourseIdToResponse < ActiveRecord::Migration
  def change
    add_column :responses, :Response, :string

    add_column :responses, :course_id, :integer

  end
end
