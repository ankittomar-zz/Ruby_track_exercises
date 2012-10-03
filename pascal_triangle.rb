def pascal_triangle
  print("Enter number of rows:")
  num_rows = gets().to_i
  current_row =[1]
  while current_row.length <= num_rows+1
    print "#{current_row} \n"
    current_row = yield current_row
  end
end

pascal_triangle {|currt_row| 
  current_row = [1]
  pos = 0
  (currt_row.size-1).times do
    current_row.push(currt_row[pos]+currt_row[pos+1])
    pos += 1
  end
  current_row.push(1)
}

    


  
