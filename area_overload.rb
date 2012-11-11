include Math
class AreaOverload
  def area(*args)
     number_of_argumnets = args.length
    if number_of_argumnets == 1
      radius = args[0]
      area = 3.14*radius*radius
      puts ("Area of Cicle with Radius #{radius}=  #{area}")
    elsif number_of_argumnets == 2
      len,bred = args
      area = len*bred
      puts ("Area of Rectangle with length #{len} and breadth #{bred} =  #{area}")
    elsif number_of_argumnets == 3
      side1,side2,side3 = args
      semiperimeter = (side1 + side2 + side3)/2
      area = sqrt(semiperimeter*(semiperimeter-side1)*(semiperimeter-side2)*(semiperimeter-side3))
      area<=0 ? puts("not a triangle check the values") : puts("Area of Triangle with sides #{side1}, #{side2}, #{side3} =  #{area}")
    end
  end
end

obj = AreaOverload.new
obj.area(5)
obj.area(4,5)
obj.area(24,30,18)
    