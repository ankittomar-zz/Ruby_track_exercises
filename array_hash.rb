def array_hash
  items_array = Array.new
  items_array = ['array','qwerty','qwer',123456,12345,'qwert',1234,123,'qwe',12,'qw',1234567,'qwertyu']
  array_to_hash(items_array)
end

def array_to_hash(items)
  length=items.length-1
  generated_hash = Hash.new
  for i in 0..length
    element_length = items[i].to_s.length
    (generated_hash[element_length] ||= []) << items[i]      
  end
  puts generated_hash
end

array_hash
