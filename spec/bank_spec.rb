describe Bank do

  let(:account) { Account.new }
  subject(:bank) { described_class.new(account) }

  describe "#deposit" do

    it "increases the balance" do
      bank.deposit(500)
      expect(bank.account.balance).to eq(500)
    end

    it "adds a record to the transactions array" do
      expect{bank.deposit(500)}.to change{bank.account.transactions.length}.by(1)
    end

    it "adds a correct record" do
      bank.deposit(500)
      expect(bank.account.transactions[0]).to eq({date: Time.now.strftime("%d/%m/%Y"),
        credit: 500,
        debit: 0,
        balance: 500})
    end

  end

  describe "#withdraw" do

    it "decreases the balance" do
      bank.deposit(2000)
      bank.withdraw(1000)
      expect(bank.account.balance).to eq(1000)
    end

    it "adds a record to the transactions array" do
      bank.deposit(1000)
      expect{bank.withdraw(500)}.to change{bank.account.transactions.length}.by(1)
    end

  end

  describe "#print_statement" do

    it "prints out a string with correct ammount" do
      bank.deposit(100)
      expect{bank.print_statement}.to output(/100/).to_stdout
    end

    it "prints out a string with correct date" do
      bank.deposit(100)
      date = Time.now.strftime("%d/%m/%Y")
      expect{bank.print_statement}.to output(/#{date}/).to_stdout
    end

  end

end
