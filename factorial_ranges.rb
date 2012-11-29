def factorial
  puts("enter the number whose factorial is to be calculated: ")
  number = gets.chomp.to_i
  if number<0
    puts("Factorial of negative number cant be calculated please try again")
    factorial
  else
    factorial = generate_factorial(number)
    puts ("Factorial of #{number} is = #{factorial}") 
  end
end

def generate_factorial(number)
  return 1 if number < 2  
  rang = 2..number
  factorial = 1 
  rang.each {|digit| factorial = factorial*digit}
  factorial  
end

factorial


