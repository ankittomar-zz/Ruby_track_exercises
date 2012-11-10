def find_prime
  print ("Enter the End Limit: ")
  end_limit = gets.to_i
  1.step(end_limit) do |h|
    prime = gen_prime(h)
    if prime == 0
      puts(h)
    end
    h+=1
  end  
end

def gen_prime(num)
  2.step(num-1) do |h|
    if num.remainder(h)==0
      return 1
    end
  end
  return 0
end
	 
find_prime

