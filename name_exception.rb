class Name
  attr_accessor :first_name, :last_name
  def validate
    begin
      ((self.first_name=~/^[A-Z]/) && self.first_name.length > 0 && self.last_name.length > 0) ? 
      puts("Name entered is #{first_name} #{last_name}")  : raise(ArgumentError) 
    rescue ArgumentError
      puts("lower case or nil exception raised")
    end      
  end
end 

obj = Name.new
puts("Enter First name")
obj.first_name = gets.chomp.lstrip
puts("Enter Last Name")
obj.last_name = gets.chomp.lstrip
obj.validate
