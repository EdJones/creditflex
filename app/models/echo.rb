class Echo < ActiveRecord::Base
  attr_accessible :user_id, :wish_id
  belongs_to :wish
end
