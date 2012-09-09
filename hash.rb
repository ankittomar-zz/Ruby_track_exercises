
def get_string
  print ("Enter the string to be tested :  ")
  statement = gets()
  p(count_character(statement))
end  	

def count_character(statement)
  count_hash = Hash.new()
  statement.each_char do |alphabet|
    if alphabet!= "\n" && alphabet != " "
      if count_hash.assoc(alphabet) == nil 
        count_hash[alphabet] = 1
      else 
        count_hash[alphabet] += 1
      end
    end
  end
  count_hash
end

get_string


