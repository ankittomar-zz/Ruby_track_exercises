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
     (amount > self.balance) ? (return 1) : self.balance -= amount	
  end
end

def get_name
  print("enter name: ")
  name = gets.chomp
  puts ("====================================================")
end 
 
def handle_account()
  status = 'y'
  until status == 'q' || status =='Q' do
    name = get_name
    object1 = Customer.new(name)

    puts ("Name of Account Holder : #{object1.name}")
    puts("Account number: #{object1.account_number}")
    
    puts ("Enter the balance")
    initial_amount = gets.chomp
    if initial_amount != ""
      object1.balance = initial_amount.to_f
    end
    
    print("Enter the amount to be credited : ")
    amount_add = gets.to_f
    puts(amount_add.inspect)
    puts("Amount before Crediting: Rs#{object1.balance}")
    object1.deposit(amount_add)
    puts("Amount after Crediting Rs#{amount_add} is : Rs#{object1.balance}")		
    
    print("Enter the amount to be debited : ")
    amount_ded = gets.to_f
    flag = 'y'
    while object1.withdrawl(amount_ded) == 1 && flag == 'y' do
      puts ("not enough balance please try again. Remaining balance is #{object1.balance}")
      puts ("press 'y' to enter withdrawl amount and 'Q to proceed to next account")
      flag = gets.chomp.downcase
      if flag == 'y'
        puts "enter new withdrawl amount"
        amount_ded = gets.to_f
      end

      if object1.withdrawl(amount_ded) != 1
        puts("Amount after Debiting RS#{amount_ded} : Rs#{object1.balance}")
        flag = 'q'
      end
    end
    
    puts ("enter Q to quit. Press Enter to continue")
    status = gets.rstrip	
  end
end	


handle_account