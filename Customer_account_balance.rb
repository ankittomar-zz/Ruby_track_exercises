class Customer
  @@base_account_number = 0
  def initialize(name)
    @name = name
    @account_number = @@base_account_number += 1
    @balance	= 1000
  end

  attr_accessor :balance, :account_number, :name 
  
  def deposit(amount)
    self.balance += amount
  end

  def withdrawl(amount)
    self.balance -= amount	
  end
end

def entry()
  status = 'y'
  until status == 'q' || status =='Q' do
    print("enter name: ")
    name = gets.chomp
    puts ("====================================================")
    object1 = Customer.new(name)
    puts ("Name of Account Holder : #{object1.name}")
    puts("Account number: #{object1.account_number}")
    print("Enter the amount to be credited : ")
    amount_add = gets.chomp.to_f
    puts(amount_add.inspect)
    puts("Amount before Crediting: Rs#{object1.balance}")
    object1.deposit(amount_add)
    puts("Amount after Crediting Rs#{amount_add} is : Rs#{object1.balance}")		
    print("Enter the amount to be debited : ")
    amount_ded = gets.chomp.to_f
    puts("Amount before Debiting: Rs#{object1.balance}")
    object1.withdrawl(amount_ded) 
    puts("Amount after Debiting RS#{amount_ded} : Rs#{object1.balance}")
    puts ("enter Q to quit. Press Enter to continue")
    status = gets.chomp.rstrip	
  end
end	


entry

