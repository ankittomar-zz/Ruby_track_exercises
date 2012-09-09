def palindrome
  continue = 'y'
  until continue == 'q' || continue == 'Q' do
    print ("enter the string to be checked : ")
    sen = gets().rstrip.downcase
    puts check_palindrome(sen) ? "String entered is Palindrome" : "String entered is not Palindrome" 
    print("To continue press enter and to exit press 'q' or 'Q' : ")
    continue = gets().rstrip
  end
end 

def check_palindrome(sen)
  sen.reverse.eql? sen
end

palindrome
