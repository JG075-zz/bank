class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    create_record("deposit", amount)
  end

  def withdraw(amount)
    @balance -= amount
    create_record("withdraw", amount)
  end

  private

  def create_record(type, amount)
    record = Hash.new
    record[:date] = Time.now.strftime("%d/%m/%Y")
    if type == "deposit"
      record[:credit] = amount
      record[:debit] = 0
    else
      record[:debit] = amount
      record[:credit] = 0
    end
    record[:balance] = @balance
    @transactions.push(record)
  end
end
