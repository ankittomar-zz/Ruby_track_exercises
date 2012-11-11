def array_hash
  items = Array.new
  items = ['array','qwerty','qwer',123456,12345,'qwert',1234,123,'qwe',12,'qw',1234567,'qwertyu']
  element_count_hash=arr_to_hash(items)
  puts("===================================character count hash=================================")
  puts element_count_hash
  puts("==============================Partitioon hash===========================================")
  puts odd_even(element_count_hash) 
end

def arr_to_hash(items)
  array_length=items.length-1
  element_count_hash = Hash.new
  for i in 0..array_length
    element_length = items[i].to_s.length
    (element_count_hash[element_length] ||= []) << (items[i])
  end
  element_count_hash
end

def odd_even(element_count_hash)
  part = Hash.new  
  element_count_hash.inject(0) { |hash,(k,v)| if k.odd? then (part["odd"] ||= []) << v  else  (part["even"] ||= []) << v end } 
  part
end

array_hash
