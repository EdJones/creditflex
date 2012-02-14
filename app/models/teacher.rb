class Teacher < ActiveRecord::Base
belongs_to :user
delegate :username, :avatar, :avatar?, :email, :to => :user
#attr_accessible  :district, :school, :subject, :specialty, :bio, :notes, :first_name, :last_name, :title, :user_attributes

def name
 logger.debug "name #{self.first_name}"
 logger.debug "name #{self.last_name}"
 "#{self.first_name}" + " "+ "#{self.last_name}"
end

end
