class Name
  def get_values
    puts("Enter First name")
    first_name = gets.rstrip
    puts("Enter Last Name")
    last_name = gets.rstrip
    begin
      ((first_name=~/^[A-Z]/) && first_name.length > 0 && last_name.length > 0) ? 
      puts("Name entered is #{first_name} #{last_name}")  : raise(ArgumentError) 
    rescue ArgumentError
      puts("lower case or nil exception raised")
    end      
  end
end 


obj = Name.new
obj.get_values