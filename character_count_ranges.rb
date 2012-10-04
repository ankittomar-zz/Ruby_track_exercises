def character_count_range
  text = "i am standing @ 5 AVE NYC with #,;':"
  count_characters(text)
end

  
def count_characters(text)
  lower_case = 0
  upper_case = 0
  special_char = 0
  digits = 0
  text.each_char do |c| 
   if(('a'..'z')=== c) then lower_case += 1
   elsif(('A'..'Z')=== c) then  upper_case+=1
   elsif(('0'..'9')=== c ) then digits+=1
   elsif(((58..64)=== c.ord || (33..47)=== c.ord) || (91..96)=== c.ord || (123..126) === c.ord) then special_char+=1 
   end 
  end
  puts ("Text used => #{text}")
  puts ("Lower_case: #{lower_case}")
  puts ("upper_case: #{upper_case}")
  puts ("special_caharcters: #{special_char}")
  puts ("Digits: #{digits}")
end

character_count_range
