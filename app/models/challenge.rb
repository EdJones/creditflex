class Challenge < ActiveRecord::Base
  attr_accessible :badge_id, :badge_name, :credit, :description, :name, :user_id
end
