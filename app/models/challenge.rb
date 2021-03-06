class Challenge < ActiveRecord::Base
  attr_accessible :badge_id, :badge_name, :credit, :description, :name, :user_id, :subject, :goal, :teacher, :district, :needs, :challengepic
  
  has_one :wish
  belongs_to :user
  
  mount_uploader :challengepic, ChallengepicUploader
end
