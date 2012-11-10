class InterestDifference
  attr_accessor :rate, :time, :principal
  def simple_intrest
     @principal+(@principal*@rate*@time)/100
  end
  def compound_interest
     @principal * ((1+ (@rate/100.0))** @time)
  end
  def difference
    puts ("Difference = #{compound_interest - simple_intrest}")
  end
end

print("Enter principal :  ")
principal = gets.to_i
print("\nenter time : ")
time = gets.to_i
obj = InterestDifference.new.tap do |item|
  item.rate = 10
  item.time = time
  item.principal = principal
end
puts ("Amount with Compound Intrest = #{obj.compound_interest} \n")
puts ("Amount with Simple Intrest = #{obj.simple_intrest} \n")
puts obj.difference
