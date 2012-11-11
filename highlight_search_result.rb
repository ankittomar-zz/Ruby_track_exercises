def highlight_search
  text = "Can you can a can as a canner can can a can?"
  count =0
  text.gsub!(/can/i){|c| count+=1
  "(#{c})" }
  puts text  
  puts "Number of occurence = #{count}"
end

highlight_search