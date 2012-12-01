def check_palindrome(sentence)
  sentence.downcase.reverse.eql? sentence.downcase
end

statement =
until statement == 'q' || statement == 'Q' do
  print ("enter the string to be cheecked :  To Quit Press Q ")
  statement = gets.rstrip
  if statement == ""
    puts "Invalid Entry. Please Enter Again"
  else
  puts check_palindrome(statement) ? "String entered is Palindrome" : "String entered is not Palindrome"
  end 
end

