def check_palindrome(sentence)
  sentence.downcase.reverse.eql? sentence.downcase
end

statement = 'y'
until statement == 'q' || statement == 'Q' do
  puts ("enter the string to be cheecked :  To Quit Press Q ")
  statement = gets.rstrip
  if statement == ""
    puts "Invalid Entry. Please Enter Again"
  elsif statement.downcase != 'q'
  puts check_palindrome(statement) ? "String entered is Palindrome" : "String entered is not Palindrome"
  end 
end

