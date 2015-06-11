require 'checkout'
require 'inventory'
require 'pricing_rules'

describe Checkout do
  context "Tests the Checkout class" do
    describe "when generic items are added without special rules" do
      before(:each) do
        @basket = Checkout.new(PricingRules.new)
        @basket.scan(:SR1)
      end

      it "returns the correct price" do
        expect(@basket.total).to eq 5.00
      end

      it "works with the scan method (adding to cart)" do
        expect(@basket.basket.count).to eq 1
      end
    end

    context "if discounts are in play" do

      describe 'Test case 1' do
        before (:each) do
          @basket = Checkout.new(PricingRules.new)
          @basket.scan(:GR1)
          @basket.scan(:SR1)
          @basket.scan(:GR1)
          @basket.scan(:GR1)
          @basket.scan(:CF1)
        end

        it 'should return a total price 22.45' do
          expect(@basket.total).to eq 22.45
        end
      end

      describe "Test case 2" do
        before (:each) do
          @basket = Checkout.new(PricingRules.new)
          @basket.scan(:GR1)
          @basket.scan(:GR1)
        end

        it "should return a total price 3.11" do
          expect(@basket.total).to eq 3.11
        end
      end

      describe "Test case 3" do
        before(:each) do
          @basket = Checkout.new(PricingRules.new)
          @basket.scan(:SR1)
          @basket.scan(:SR1)
          @basket.scan(:GR1)
          @basket.scan(:SR1)
        end

        it "should return a total price 16.61" do
          expect(@basket.total).to eq 16.61

        end

      end
    end
  end
end
