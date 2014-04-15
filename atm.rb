# Bank Teller Project

class Bank
    attr_accessor :name, :balance
    def initialize(add, login, draw, deposit, balance, transfer, pin, name, password, accounts, amount)
        @name = name
        @amount = amount
        @accounts = accounts
        @pin = pin
        @balance = balance 
        
    end
    
end


accounts = {:name => :pin, :balance => @balance}

puts "What would you like to do?"
puts "type 'add' to add a new account."
puts "Type 'login' to login to your account."

    

choice = gets.chomp.downcase
case choice
when 'add'
puts "Enter your name."
name = gets.chomp


puts "enter pin number"
pin = gets.chomp


balance = 0

accounts[name.to_sym] = pin.to_i
accounts[:balance] = balance.to_i
puts accounts

when 'login'
    
    puts "Your name"
    name = gets.chomp
    if accounts[name].nil?
        puts "name not found"
    else
        puts "Type 'draw' from an existing account."
        puts "Type 'deposit' to deposit to an existing account."
        puts "Type 'balance' to display the balance of an existing account."
        puts "Type 'transfer' to move money between two accounts."
        
        option = gets.chomp.downcase
        case option
        when 'draw'
            if @balance >= amount
             @balance = @balance - amount
            end
            return accounts
            puts @accounts
        when 'deposit'
             @balance = @balance + amount
        when 'balance'
            def get_balance(accounts)

            return @balance
            puts @balance
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
    

