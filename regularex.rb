def get_text()
  print("enter the text : ")
  statement = gets.chomp
  puts ("String before substitution : #{statement}")
  replace_vowel(statement)
  puts ("string after substitution : #{statement}")
end

def replace_vowel(statement)
  statement.gsub!(/[aeiou]/i, '*')
end
get_text

