class Array
  def reverse_iterate
    array_length = self.length
    while array_length >= 0 
      yield(self[array_length])
      array_length -= 1          
    end
  end
end
