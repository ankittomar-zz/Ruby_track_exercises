def check_palindrome(sen)
  sen.reverse.eql? sen
end

continue = 'y'
until continue == 'q' || continue == 'Q' do
  print ("enter the string to be checked : ")
  statement = gets.chomp.rstrip.downcase
  puts check_palindrome(statement) ? "String entered is Palindrome" : "String entered is not Palindrome" 
  print("To continue press enter and to exit press 'q' or 'Q' : ")
  continue = gets.chomp.rstrip
end

