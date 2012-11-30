def replace_vowel(statement)
  statement.gsub(/[aeiou]/i, '*')
end

print("enter the text : ")
statement = gets.chomp
puts ("String before substitution : #{statement}")
puts ("string after substitution : #{replace_vowel(statement)}")


