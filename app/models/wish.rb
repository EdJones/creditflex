class Wish < ActiveRecord::Base
  attr_accessible :user_id, :wish
  belongs_to :user
  belongs_to :challenge
  has_many :echoes

public
def self.wish_stream

  @wishes = Wish.order("created_at desc").limit(100)
  @echoes = Echo.order("created_at desc").limit(50).map do |echo|
	OpenStruct.new(created_at: echo.created_at, wish: echo.wish.wish, user: echo.wish.user, echoed_by: echo.user, echo_count: echo.wish.echoes.count)
  end
  
  # @rewishes = @echoes.collect{|x| x.wish} + @wishes
  # @rewishes = @rewishes.sort_by { |obj| obj.created_at }.reverse!
  
  ( @echoes + @wishes ).sort_by(&:created_at).reverse!

end

def echo_count
	echoes.count
end

end