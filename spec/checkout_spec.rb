require 'checkout'

describe Checkout do
  context "Tests the Checkout class" do
    describe "when generic items are added without special rules" do
      before(:each) do
        @basket = Checkout.new([])
        @basket.scan(:SR1)
      end

      it "returns the correct price" do
        expect(@basket.total).to eq 5.00
      end

      it "works with the scan method (adding to array" do
        expect(@basket.array.count).to eq 1
      end

    end

  end
end
