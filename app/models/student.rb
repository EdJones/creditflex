class Student < ActiveRecord::Base
belongs_to :user
has_many :projects
has_many :requests
delegate :username, :avatar, :avatar?, :email, :to => :user
end
