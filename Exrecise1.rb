statement = "hi how are you feeling today"
stored = Hash.new()
count =1
statement.each do |alphabet|
  if stored.assoc(alphabet) = nil
    stored[alphabet] = 1
  else 
    count=stored[alphabet]+1
    stored[alphabet] = count
  end
end

p stored
	 	

