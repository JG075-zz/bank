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
    record = {
      date: Time.now.strftime("%d/%m/%Y"),
      credit: 0,
      debit: 0,
      balance: @balance
    }
    type == "deposit" ? record[:credit] = amount : record[:debit] = amount
    @transactions.push(record)
  end
end
