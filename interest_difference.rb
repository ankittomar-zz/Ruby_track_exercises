class InterestDifference

  def initialize(rate)
    @rate = rate
  end

  attr_accessor :rate, :time, :principal
  def simple_intrest
    @principal + (@principal * @rate * @time) / 100
  end
  
  def compound_interest
    @principal * ((1 + (@rate / 100.0)) ** @time)
  end
  
  def difference
    puts ("Difference = #{compound_interest - simple_intrest}")
  end
end

print("Enter principal :  ")
principal = gets.to_i
print("enter time : ")
time = gets.to_i
 
InterestDifference.new(10).tap do |item|
  item.time,item.principal = time,principal
  puts ("Amount with Compound Interest = #{item.compound_interest} \n")
  puts ("Amount with Simple Intrest = #{item.simple_intrest} \n")
  puts item.difference
end
