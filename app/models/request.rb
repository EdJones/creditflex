class Request < ActiveRecord::Base
belongs_to :user
has_many :responses
make_voteable
end
