class InterestDifference
  attr_accessor :rate, :time, :principal
  def simple_intrest
    amount_si = @principal+(@principal*@rate*@time)/100
  end
  def compound_interest
    amount_ci = @principal * ((1+ (@rate/100.0))** @time)
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
puts ("Difference = #{obj.compound_interest - obj.simple_intrest}")