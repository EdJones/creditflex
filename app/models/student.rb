class Student < ActiveRecord::Base
belongs_to :user
delegate :username, :avatar, :email, :to => :user
end
