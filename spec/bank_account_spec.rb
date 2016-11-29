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
  end

end
