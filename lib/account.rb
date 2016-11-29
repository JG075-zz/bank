class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deduct(amount)
    @balance -= amount
  end

  def add(amount)
    @balance += amount
  end

  def add_record(record)
    @transactions.push(record)
  end
end
