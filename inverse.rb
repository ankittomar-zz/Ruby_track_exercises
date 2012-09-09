class Inverse

  def initialize(statement)
    @statement = statement
  end
  attr_accessor :statement
  def to_s()
    puts("=============Statement before Swaping===============")
    puts(@statement)
    statement.swapcase!
    puts("=============Statement after Swaping===============")
    puts(@statement)
  end
end

print("Enter the statement: ")
statement = gets()
inverse_object = Inverse.new(statement)
inverse_object.to_s
