class Account
    attr_reader :name
    attr_reader :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
        pin
    end
    private def pin
        @pin_number = 1234
    end
    private def pin_error
        return "Access denied: incorrect PIN"
    end
    public def display_balance(pin)
        puts (pin == @pin_number ? "Balance: #{@balance}" : pin_error)
    end
    public def withdraw(pin, amount)
        if pin == @pin_number
            @balance -= amount.to_i
            puts "Withdrew £#{amount}. New balance: #{@balance}"
        else
            puts pin_error
        end
    end
end

checking_account = Account.new('Kevin')
checking_account.display_balance(1235)
checking_account.display_balance(1234)
checking_account.withdraw(1234, 10)
checking_account.withdraw(1244, 10)