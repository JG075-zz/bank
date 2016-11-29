describe BankAccount do
  subject(:bank_account) { described_class.new }

  it "starts with a 0 balance" do
    expect(bank_account.balance).to eq(0)
  end

  describe "#deposit" do
    it "increases the balance" do
      bank_account.deposit(500)
      expect(bank_account.balance).to eq(500)
    end

    it "adds a record to the transactions array" do
      expect{bank_account.deposit(500)}.to change{bank_account.transactions.length}.by(1)
    end

    it "adds a correct record" do
      bank_account.deposit(500)
      expect(bank_account.transactions[0]).to eq({date: Time.now.strftime("%d/%m/%Y"),
        credit: 500, 
        debit: 0,
        balance: 500})
    end
  end

  describe "#withdraw" do
    it "decreases the balance" do
      bank_account.deposit(2000)
      bank_account.withdraw(1000)
      expect(bank_account.balance).to eq(1000)
    end
  end


end
