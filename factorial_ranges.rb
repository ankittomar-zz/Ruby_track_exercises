def factorial_generator
  puts("enter the number whose factorial is to be calculated: ")
  number = gets.to_i
  factorial = generate_factorial(number) 
  if generate_factorial(number) == false
    puts("Factorial of negative number cant be calculated please try again")
    factorial_generator
  else    
    puts ("Factorial of #{number} is = #{factorial}") 
  end
end

def generate_factorial(number)
  return false if number < 0
  return 1 if number < 2  
  rang = 2..number
  factorial = 1 
  rang.each {|digit| factorial = factorial*digit}
  factorial  
end

factorial_generator


