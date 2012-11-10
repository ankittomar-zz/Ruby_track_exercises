def reverse_string
  print("Enter the string to be reversed =   ")
  text = gets
  puts("===================string after reversing===============")
  puts revers_method(text)
end

def revers_method(text)
text.split.reverse.join(" ")
end

reverse_string
