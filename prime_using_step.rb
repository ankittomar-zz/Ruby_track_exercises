def generate_prime_list(end_limit)
  1.step(end_limit) do |number|
    prime = check_prime(number)
    if prime == 0
      puts(number)
    end
    number+=1
  end  
end

def check_prime(number)
  2.step(number-1) do |num|
    if number.remainder(num)==0
      return 1
    end
  end
  return 0
end
	 
print ("Enter the End Limit: ")
end_limit = gets.to_i
generate_prime_list(end_limit)


