class Dare < ActiveRecord::Base
  attr_accessible :challengee_email, :challengee_twitid, :message, :user_id, :wish_id
end
