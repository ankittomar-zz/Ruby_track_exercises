class AreaOverload
	def area(figure,*args)
		if figure == "circle"
			radius = args[0]
			area = 3.14*radius*radius
			puts ("Area of Cicle with Radius #{radius}=  #{area}")
		elsif figure == "rectangle"
			len,bred = args
			area = len*bred
			puts ("Area of Rectangle with length #{len} and breadth #{bred} =  #{area}")
		elsif figure == "triangle"
			base,height = args
			area = 0.5*base*height
			puts ("Area of Triangle with base #{base} and height #{height} =  #{area}")
		end
	end
end

obj = AreaOverload.new
obj.area("circle",5)
obj.area("rectangle",4,5)
obj.area("triangle",5,10)
