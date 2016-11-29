describe BankAccount do
  subject(:bank_account) { described_class.new }

  it "starts with a 0 balance" do
    expect(bank_account.balance).to eq(0)
  end

end
