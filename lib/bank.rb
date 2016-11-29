require 'terminal-table'

class Bank
  attr_reader :account, :transactions

  def initialize(account)
    @account = account
  end

  def deposit(amount)
    @account.add(amount)
    create_record("deposit", amount)
  end

  def withdraw(amount)
    @account.deduct(amount)
    create_record("withdraw", amount)
  end

  def print_statement
    puts create_statement
  end

  private

  def create_record(type, amount)
    record = {
      date: Time.now.strftime("%d/%m/%Y"),
      credit: 0,
      debit: 0,
      balance: @account.balance
    }
    type == "deposit" ? record[:credit] = amount : record[:debit] = amount
    @account.add_record(record)
  end

  def create_statement
    rows = []
    @account.transactions.reverse_each do |record|
      rows << [record[:date], record[:credit], record[:debit], record[:balance]]
    end
     return Terminal::Table.new :headings => ['Date', 'Credit', 'Debit', 'Balance'], :rows => rows
  end
end
