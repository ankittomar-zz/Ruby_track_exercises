  class Vehicle
  def initialize(name, price)
    @name = name
    @price = price
  end

  attr_accessor :price
  
  def display()
    puts("Name of vehicle: #{@name}")
    puts ("Price : Rs#{price}")
  end
end

class Bike < Vehicle
  def initialize(dealer,name,price)
    super(name,price)
    @dealer = dealer
  end  

  def display()
    puts("Dealer: #{@dealer}")
    super
  end
end

puts("==========Bike Details==================")
bike_object = Bike.new('Hero Motors','Hero Karizma',70000)
bike_object.display
bike_object.price = 75000
puts("==========Modified details==============")
bike_object.display

