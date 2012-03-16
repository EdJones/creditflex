class Response < ActiveRecord::Base
  belongs_to :request
  belongs_to :user
  belongs_to :course
end
