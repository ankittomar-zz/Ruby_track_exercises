class Array
  def reverse_iterate
    length = self.length-1
    rev_arr = Array.new
    while length >=0 do
      rev_arr.push(self[length])
      length = length-1
    end
    p rev_arr
  end
end
