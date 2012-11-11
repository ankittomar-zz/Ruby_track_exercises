def factorial
  puts("enter the number whose factorial is to be calculated: ")
  number = gets().to_i
  begin
    if number<0
      raise ArgumentError
    else
      factorial = generate_factorial(number)
      puts ("Factorial of #{number} is = #{factorial}") 
    end
  rescue ArgumentError
   puts "Exception occured please try again"
  end
end

def generate_factorial(number)
  factorial = 1
  1.step(number) {|i| factorial = factorial*i} 
  factorial  
end

factorial


