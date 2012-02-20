class User < ActiveRecord::Base
  authenticates_with_sorcery!
#  default_scope where(:role => 'guest')
  #attr_accessible  :username, :email, :password, :password_confirmation, :role, :avatar, :teachers_attributes
  ROLES = %w[admin moderator teacher student banned]
  
  has_one :teacher
  has_one :student
  has_many :responses
  has_many :resources
  
  accepts_nested_attributes_for :student, :allow_destroy => true
  accepts_nested_attributes_for :teacher, :allow_destroy => true
   
  validates_presence_of :username
  validates_uniqueness_of :username, :email, :allow_blank => true
  validates_format_of :username, :with => /^[-\w\._@]+$/i, :allow_blank => true, :message => "should only contain letters, numbers, or .-_@"
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_length_of :password, :minimum => 4, :allow_blank => true
  
  mount_uploader :avatar, AvatarUploader
  
end
