def array_hash
items = Array.new
items = ['array','qwerty','qwer',123456,12345,'qwert',1234,123,'qwe',12,'qw',1234567,'qwertyu']
arr_to_hash(items)
end

def arr_to_hash(items)
  len=items.length-1
  arr_hash = Hash.new
  for i in 0..len
    elem_len = items[i].to_s.length
    (arr_hash[elem_len] ||= []) << items[i]      
  end
  puts arr_hash
end

array_hash
