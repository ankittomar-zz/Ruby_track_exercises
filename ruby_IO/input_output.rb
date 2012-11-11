def read_file
  filename = 'read.csv'
  develope_hash = Hash.new
  File.open(filename).read.split("\n").each do |line|
    name,emp_id,designation = line.split(',')
    element = (name << " " << "(" << "EmpId: #{emp_id}" << ")")
    (develope_hash[designation] ||= []) << element
  end
  
  File.open('new.txt','w') { |f|
    develope_hash.each {|key , value|
      f << "#{key}" << "\n " 
      value.each{|item|
      f << "\t"<< "#{item}"  << "\t" << "\n" }
      f << "\n"
    }
   puts "File Formated successfully"

  }
end

read_file