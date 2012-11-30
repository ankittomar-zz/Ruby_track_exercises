def fibonacci
  print("Enter the Limit: ")
  limit = gets.to_i
  a,b=0,1
  yield(a,b,limit)
end

def gen_fibonacci
  fibonacci() do |a,b,limit|
    print ("#{a} #{b}") 
    while (a+b<limit) do
      a,b=b,a+b
      print(" #{b}")
    end
  end
end

gen_fibonacci

