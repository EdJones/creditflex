class Project < ActiveRecord::Base
STATUSES = %w[Exploring Active Completed Suspended]
mount_uploader :projekt, ProjektUploader
belongs_to :user
belongs_to :student
end
