require 'checkout'
require 'inventory'
require 'pricing_rules'

describe PricingRules do
  describe "buy-one-get-one-free" do
    before(:each) do
      @basket = Checkout.new(PricingRules.new)
    end

    describe "when buying a single green tea" do
      it "shouldn't apply a discount with one green tea" do
        @basket.scan(:GR1)
        expect(@basket.total).to eq 3.11
      end
    end

    describe "when buying 4 green teas" do
      it "should charge half price" do
        @basket.scan(:GR1)
        @basket.scan(:GR1)
        @basket.scan(:GR1)
        @basket.scan(:GR1)
        expect(@basket.total).to eq 6.22
      end
    end
  end

  describe "buying in bulk" do
    before(:each) do
      @basket = Checkout.new(PricingRules.new)
    end

    describe "it shouldn't discount 2 strawberries" do
      it "charges normal price" do
        @basket.scan(:SR1)
        @basket.scan(:SR1)
        expect(@basket.total).to eq 10.0
      end
    end
    describe "it should apply discount to bulk buying" do
      it "applies discount with 3 strawberries" do
        @basket.scan(:SR1)
        @basket.scan(:SR1)
        @basket.scan(:SR1)
        expect(@basket.total).to eq 13.5

      end

    end
  end
end
