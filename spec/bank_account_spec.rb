describe BankAccount do
  subject(:bank_account) { described_class.new }

  it "starts with a 0 balance" do
    expect(bank_account.balance).to eq(0)
  end

  describe "#deposit" do
    it "increase the balance" do
      expect{bank_account.deposit(500)}.to change{bank_account.balance}.by(500)
    end
  end

end
