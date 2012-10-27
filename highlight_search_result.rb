def highlight_search
  str = "Can you can a can as a canner can can a can?"
  count =0
  str.gsub!(/can/i){|c| count+=1
  '(can)' }
  puts str  
end

highlight_search