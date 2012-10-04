def factorial
  puts("enter the number whose factorial is to be calculated: ")
  number = gets().to_i
  factorial = generate_factorial(number)
  puts ("Factorial of #{number} is = #{factorial}") 
end

def generate_factorial(number)
  return 1 if number == 0  
  rang = 2..number
  facto = 1 
  rang.each {|digit| facto = facto*digit}
  facto  
end

factorial


