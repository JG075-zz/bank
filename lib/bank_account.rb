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
  end

  private

  def create_record(type, amount)
    record = {
      date: Time.now.strftime("%d/%m/%Y"),
      credit: amount,
      debit: 0,
      balance: @balance
    }
    @transactions.push(record)
  end
end
