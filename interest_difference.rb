class InterestDifference

  def initialize()
    @rate = 10
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
object1 = InterestDifference.new() 
InterestDifference.new.tap do |item|
  item.rate,item.time,item.principal = 10,time,principal
  puts ("Amount with compound_interestpound Intrest = #{item.compound_interest} \n")
  puts ("Amount with Simple Intrest = #{item.simple_intrest} \n")
  puts item.difference
end
