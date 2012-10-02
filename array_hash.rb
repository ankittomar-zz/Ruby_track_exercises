def array_hash
items = Array.new
items = ['array','qwerty','qwer',123456,12345,'qwert',1234,123,'qwe',12,'qw',1234567,'qwertyu']
arr_to_hash(items)
end

def arr_to_hash(items)
  len=items.length-1
  arr_hash = Hash.new{key = []}
  for i in 0..len
    elem_len = items[i].to_s.length
    if arr_hash.assoc(elem_len) == nil
      arr_hash[elem_len] = arr_hash[elem_len].push(items[i])
    else
      arr_hash[elem_len].push(items[i])
    end      
  end
  puts arr_hash
end

array_hash
