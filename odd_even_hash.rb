def array_hash
  items = Array.new
  items = ['array','qwerty','qwer',123456,12345,'qwert',1234,123,'qwe',12,'qw',1234567,'qwertyu']
  arr_hash=arr_to_hash(items)
  puts("===================================character count hash=================================")
  puts arr_hash
  puts("==============================Partitioon hash===========================================")
  puts odd_even(arr_hash) 
end

def arr_to_hash(items)
  len=items.length-1
  arr_hash = Hash.new{[]}
  for i in 0..len
    elem_len = items[i].to_s.length
    if arr_hash.assoc(elem_len) == nil
      arr_hash[elem_len] = arr_hash[elem_len].push(items[i])
    else
      arr_hash[elem_len].push(items[i])
    end      
  end
  arr_hash
end

def odd_even(arr_hash)
  part = Hash.new  
  arr_hash.inject(0) { |hash,(k,v)| if k.odd? then (part["odd"] ||= []) << v  else  (part["even"] ||= []) << v end } 
  part
end

array_hash
