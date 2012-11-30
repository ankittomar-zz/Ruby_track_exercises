class Fib
  def initialize
    @a=0
    @b=1
  end
  attr_accessor :a, :b

  def gen_fibonnaci
    print ("#{a} #{b}")
    while (a+b<1000) do
      yield(self)  
    end
  end

  def fibonacci
    gen_fibonnaci do |obj|
      obj.a,obj.b= obj.b,obj.a+obj.b
      print(" #{obj.b}")
    end
  end
end
 
object = Fib.new
object.fibonacci