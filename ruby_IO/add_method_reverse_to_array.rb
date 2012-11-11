class Array
  def reverse_iterate
    array_length = self.length-1
    reverse_array = Array.new
    while array_length >=0 do
      reverse_array.push(self[array_length])
      array_length -= 1
    end
    p reverse_array
  end
end
