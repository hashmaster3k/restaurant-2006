class Restaurant

  attr_reader :opening_time, :name, :dishes

  def initialize (opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(time)
    (@opening_time.to_i + time).to_s + ":00"
  end

  def add_dish (dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time.to_i < 12
      return true
    else
      return false
    end
  end

  def menu_dish_names
    dishes_upcase = []

    @dishes.each do |dish|
      dishes_upcase << dish.upcase
    end

    dishes_upcase
  end

  def announce_closing_time(time_close)
    clock = closing_time(time_close) + "AM"

    if closing_time(time_close).to_i >= 12
      clock = (closing_time(time_close).to_i - 12).to_s + ":00PM"
    end
    "#{@name} will be closing at #{clock}"
  end

end
