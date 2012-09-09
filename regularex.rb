def get_text()
  print("enter the text : ")
  sen = gets()
  puts ("String before substitution : #{sen}")
  replace_vowel(sen)
  puts ("string after substitution : #{sen}")
end

def replace_vowel(sen)
  sen.gsub!(/[aeiouAEIOU]/, '*')
end
get_text

