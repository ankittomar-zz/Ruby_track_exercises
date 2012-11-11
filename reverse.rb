def reverse_string
  print("Enter the string to be reversed =   ")
  statement = gets
  puts("===================string after reversing===============")
  puts revers_method(statement)
end

def revers_method(statement)
  statement.split.reverse.join(" ")
end

reverse_string
