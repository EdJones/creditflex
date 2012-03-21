class AddHqtToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :hqt, :boolean, :default => false

  end
end
