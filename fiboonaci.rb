def gen_fibonnaci(limit)
  a,b=0,1
  print ("#{a} #{b}")
  while (a+b<limit) do
    a,b=b,a+b
    yield(b)	
  end
end

def fibonacci(limit)
  gen_fibonnaci(limit) {|b| print(" #{b}")}
end

print("Enter the Limit: ")
limit = gets.chomp.to_i
fibonacci(limit)

