def generate_prime_list(end_limit)

  print ("2")
  (3..end_limit).step(2) do |number|
    prime = check_prime(number)
    if prime == 0
      print("  #{number}")
    end
    number += 1
  end  
end

def check_prime(number)
  (3..number-1).step(2) do |num|
    if number.remainder(num) == 0
      return 1
    end
  end
  return 0
end
	 
print ("Enter the End Limit: ")
end_limit = gets.to_i
generate_prime_list(end_limit)


