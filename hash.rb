def count_character(statement)
  count_hash = Hash.new()
  statement.each_char do |alphabet|
    if alphabet != " "
      count_hash.assoc(alphabet).nil? ? count_hash[alphabet] = 1 : count_hash[alphabet] += 1
    end
  end
  count_hash
end

print ("Enter the string whose characters are to be counted:  ")
statement = gets.chomp
p(count_character(statement))