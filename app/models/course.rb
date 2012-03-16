class Course < ActiveRecord::Base
belongs_to :subject
has_many :responses
validates :subject_id, :presence => true
mount_uploader :course_image, CourseImageUploader
end
