def read_file
  filename = 'read.csv'
  File.open(filename).read
end  

def generate_element_hash(file_data)
  develope_hash = Hash.new
  file_data.split("\n").each do |line|
    name,emp_id,designation = line.split(',')
    element = (name << " " << "(" << "EmpId: #{emp_id}" << ")")
    (develope_hash[designation] ||= []) << element
  end
  develope_hash
end

def write_to_new_file(element_hash)
  File.open('new.txt','w') { |f|
    element_hash.each {|key , value|
      f << "#{key}" << "\n " 
      value.each{|item|
      f << "\t"<< "#{item}"  << "\t" << "\n" }
      f << "\n"
    }
   puts "File Formated successfully"

  }
end
  

file_data = read_file
element_hash = generate_element_hash(file_data)
write_to_new_file(element_hash)