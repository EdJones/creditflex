class Wish < ActiveRecord::Base
  attr_accessible :user_id, :wish
  belongs_to :user
  belongs_to :challenge
  has_many :echoes
end


public
def wish_stream

  @wishes = Wish.order("created_at desc").limit(200)
  @echoes = Echo.order("created_at desc").limit(200)
  
  @rewishes = @echoes.collect{|x| x.wish} + @wishes
  @rewishes = @rewishes.sort_by { |obj| obj.created_at }.reverse!
  
  

end