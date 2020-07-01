class Restaurant

  attr_reader :opening_time, :restaurant_name

  def initialize (opening_time, restaurant_name)
    @opening_time = opening_time
    @restaurant_name = restaurant_name
  end

end
