def read_file
  filename = 'read.csv'
  dev_hash = Hash.new{[]}
  File.open(filename).read.split("\n").each do |line|
    name,emp_id,designation = line.split(',')
    element = (name << " " << "(" << "EmpId: #{emp_id}" << ")")
    if dev_hash.assoc(designation) == nil
      dev_hash[designation] = dev_hash[designation].push(element)
    else
      dev_hash[designation].push(element)
    end
  end
  
  File.open('new.txt','w') { |f|
    dev_hash.each {|key , value|
      f << "#{key}" << "\n " 
      value.each{|item|
      f << "\t"<< "#{item}"  << "\t" << "\n" }
      f << "\n"
    }
   puts "File Formated successfully"

  }
end

read_file