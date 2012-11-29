def pascal_triangle(number_of_rows)
  current_row =[1]
  while current_row.length < number_of_rows+1
    print "#{current_row} \n"
    current_row = yield current_row
  end
end

print("Enter number of rows:")
number_of_rows = gets.chomp.to_i

pascal_triangle(number_of_rows) do |currt_row| 
  current_row = [1]
  pos = 0
  (currt_row.size-1).times do
    current_row.push(currt_row[pos]+currt_row[pos+1])
    pos += 1
  end
  current_row.push(1)
end
    


  
