class Teacher < ActiveRecord::Base
belongs_to :user
delegate :username, :avatar, :email, :to => :user


def name
 logger.debug "name #{self.first_name}"
 logger.debug "name #{self.last_name}"
 "#{self.first_name}" + " "+ "#{self.last_name}"
end

end
