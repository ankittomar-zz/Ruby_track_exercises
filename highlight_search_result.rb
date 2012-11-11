def highlight_search
  str = "Can you can a can as a canner can can a can?"
  count =0
  str.gsub!(/can/i){|c| count+=1
  "(#{c})" }
  puts str  
  puts "Number of occurence = #{count}"
end

highlight_search