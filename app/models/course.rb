class Course < ActiveRecord::Base
belongs_to :subject
validates :subject_id, :presence => true
end
