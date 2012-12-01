def generate_prime_list(end_limit)

  (1..end_limit).step() do |number|
    prime = check_prime(number)
    if prime == 0
      print("  #{number}")
    end
    number+=1
  end  
end

def check_prime(number)
  (2..number-1).step() do |num|
    if number.remainder(num)==0
      return 1
    end
  end
  return 0
end
	 
print ("Enter the End Limit: ")
end_limit = gets.to_i
generate_prime_list(end_limit)


