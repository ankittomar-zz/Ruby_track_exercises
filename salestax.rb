class Salestax
  def initialize
    @salestax = 10
    @import_tax = 5 
  end

  attr_accessor :salestax, :import_tax
  
  def compute_sales_tax(product, cost_price)
    (product == "book" || product == "food" || product == "medicine") ?  0 : (cost_price * self.salestax ) / 100 
  end

  def compute_import_duty(cost_price)
    (cost_price * self.import_tax) / 100
  end

end

continue = 'y'
object1 = Salestax.new
product_hash = Hash.new(Array.new)
serial_number = 1
grand_total = 0
while continue == 'y' do
  puts("Enter Product Name")
  product_name = gets.chomp
  puts("Is Product Imported Yes/No?")
  import = gets.chomp
  puts("Is Product  Exempted from sales tax?")
  exempt_sales_tax = gets.chomp
  puts("Enter Product Price")
  product_price = gets.to_f

  (exempt_sales_tax.downcase == 'yes') ? sales_tax = 0 : sales_tax = object1.compute_sales_tax(product_name, product_price)
  (import.downcase == 'yes') ? import_duty = object1.compute_import_duty(product_price) : import_duty = 0
  total_Price = product_price + sales_tax + import_duty
  grand_total += total_Price 
  #product_hash[serial_number]
  product_hash[serial_number] =  product_name, product_price, sales_tax, import_duty, total_Price  
  serial_number += 1
  puts(" Do you want to add more items to your list(y/n)")
  continue = gets.chomp
end
puts ("Name\tPrice\tStax\tIDuty\tTotal ")
length = 1
while (length <= product_hash.length) do
  product_hash[length].each do |varable|
  print ("#{varable}\t") 
end
  puts
  length += 1
end
puts("Grand Total = #{grand_total.round}")

  