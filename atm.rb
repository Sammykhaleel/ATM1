# Bank Teller Project

 
class Bank
    attr_accessor :name, :balance, :pin, :amount
    def initialize(add, login, draw, deposit, balance, transfer, pin, name, password, accounts, amount)
        @name = name
        @amount = amount
        @accounts = accounts
        @pin = pin
        @balance = balance 
        
    end
    



accounts = {}

puts "What would you like to do?"
puts "type 'add' to add a new account."
puts "Type 'login' to login to your account."

   

choice = gets.chomp.downcase
case choice
when 'add'

puts "Enter your name."
name = gets.chomp

File.open('save.rb', 'w+') do |f|
f.write "#{name}\n"
@name = name
end

puts "enter pin number"
pin = gets.chomp


balance = 10

accounts[name.to_sym] = pin.to_i
accounts[:balance] = balance.to_i

puts accounts

when 'login'
    
    puts "Your name"
    name = gets.chomp
    File.open('save.rb', 'r') do |f|
    f.readlines[0]
    if accounts[name] != @name
        puts "name not found"
    
    else
        puts "Type 'draw' from an existing account."
        puts "Type 'deposit' to deposit to an existing account."
        puts "Type 'balance' to display the balance of an existing account."
        puts "Type 'transfer' to move money between two accounts."
        
        option = gets.chomp.downcase
        case option
        when 'draw'
            puts "Enter the amount."
            amount = gets.chomp
        def amount
            if @balance >= amount
                @balance -= amount
                 puts "your balance is #{@balance}"
             
            else 
            puts "you don't have honey."
            end
        end
            def balance(accounts)

            return @balance
            puts @balance
            end 
           puts balance
        

        when 'deposit'
             @balance = @balance + amount
        when 'balance'
            
        end    
    end
    end

end






end





# def do_transfer(debtor, creditor, amount)
#     # Transfer amount from one account to another account: from debtor to creditor.
#     # Remember to check for sufficient funds!
#     #WRITE YOUR do_transfer METHOD HERE
#     accounts = {}
#     if debtor['balance'] >= amount
#         creditor['balance'] = creditor['balance'] + amount
#         debtor['balance'] = debtor['balance'] - amount
#     end
#     accounts['debtor'] = debtor
#     accounts['creditor'] = creditor
#     return accounts
# end 
    

