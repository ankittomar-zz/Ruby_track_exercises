def gen_fibonnaci(limit)
  a,b=0,1
  print ("#{a} #{b}")
  while (a+b<limit) do
    a,b=b,a+b
    yield(b)	
  end
end

def fibonacci
  print("Enter the Limit: ")
  limit = gets().to_i
  gen_fibonnaci(limit) {|b| print(" #{b}")}
end

fibonacci

