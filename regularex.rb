def get_text()
  print("enter the text : ")
  sen = gets()
  puts ("String before substitution : #{sen}")
  replace_vowel(sen)
  puts ("string after substitution : #{sen}")
end

def replace_vowel(sen)
  sen.gsub!(/[aeiou]/i, '*')
end
get_text

