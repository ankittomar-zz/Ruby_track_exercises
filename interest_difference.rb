class InterestDifference

  def initialize(&block)
    instance_eval(&block)
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
prin = gets.to_i
print("enter time : ")
t = gets.to_i
 
object1 = InterestDifference.new do 
  @rate, @time, @principal = 10, t, prin
end
puts ("Amount with Compound Interest = #{object1.compound_interest} \n")
puts ("Amount with Simple Intrest = #{object1.simple_intrest} \n")
puts object1.difference