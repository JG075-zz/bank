describe Account do

  subject(:account) { described_class.new }

  describe "#initialize" do

    it "starts with a 0 balance" do
      expect(account.balance).to eq(0)
    end

  end

  describe "#add" do

    it "adds to the balance" do
      expect{account.add(5)}.to change{account.balance}.by(5)
    end

  end

  describe "#deduct" do

    it "deducts from the balance" do
      account.add(10)
      expect{account.deduct(5)}.to change{account.balance}.by(-5)
    end

  end

end
