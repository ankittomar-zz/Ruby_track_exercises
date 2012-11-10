def power_arr
  power_array=Array.new
  power_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  print("Enter exponent value: ")
  x = gets().to_i
  puts("====== Array Before Modification ======")
  p power_array
  power_array = expo_fun(power_array,x)
  puts("========= Array After Modification ========")
  p power_array
end

def expo_fun(power_array,x)
  power_array.collect{|a| a**x}
end

power_arr
