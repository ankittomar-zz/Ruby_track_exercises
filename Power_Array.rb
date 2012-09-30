def power_arr
  power_array=Array.new
  power_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  print("Enter exponent value: ")
  x = gets().to_i
  expo_fun(power_array,x)
end

def expo_fun(power_array,x)
  puts("====== Array Before Modification ======")
  print(power_array.collect{|a| a})
  puts
  puts("========= Array After Modification ========")
  print(power_array.collect{|a| a**x})
  puts
end

power_arr
