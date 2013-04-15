class Wish < ActiveRecord::Base
  attr_accessible :user_id, :wish
  belongs_to :user
  belongs_to :challenge
  has_many :echoes
end


public
def wish_stream

  @wishes = Wish.all.reverse
  @echoes = Echo.all.reverse
  
  @rewishes = @echoes.collect{|x| x.wish} + @wishes
  
  
  

end