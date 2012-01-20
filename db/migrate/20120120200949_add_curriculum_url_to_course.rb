class AddCurriculumUrlToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :curriculum_url, :string
  end
end
