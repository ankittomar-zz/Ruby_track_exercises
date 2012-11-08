class Customer
  def initialize(name,account_no,balance)
    @name = name
    @account = account_no+1
    @balance	= balance
  end

  attr_accessor :balance 
  
  def deposit(amount)
    self.balance += amount
  end

  def withdrawl(amount)
    self.balance -= amount	
  end
end

def entry()
  status = 'y'
  account_number = rand(645533243)
  until status == 'q' || status =='Q' do
    account_number += 1
    print("enter name: ")
    name = gets()
    puts("Account number: #{account_number}")
    print("Enter Balance: ")
    balance = gets().to_f
    object1 = Customer.new(name,account_number,balance)
    print("Enter the amount to be credited : ")
    amount_add = gets().to_f
    puts(amount_add.inspect)
    puts("Amount before Crediting: Rs#{object1.balance}")
    object1.deposit(amount_add)
    puts("Amount after Crediting Rs#{amount_add} is : Rs#{object1.balance}")		
    print("Enter the amount to be debited : ")
    amount_ded = gets().to_f
    puts("Amount before Debiting: Rs#{object1.balance}")
    object1.withdrawl(amount_ded) 
    puts("Amount after Debiting RS#{amount_ded} : Rs#{object1.balance}")
    puts ("enter Q to quit. Press Enter to continue")
    status = gets().rstrip	
  end
end	


entry

