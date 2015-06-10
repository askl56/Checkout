require 'checkout'
require 'item'
require 'rules'

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

      it "works with the scan method (adding to array)" do
        expect(@basket.array.count).to eq 1
      end
    end

    describe "if discounts are in play" do
      before (:each) do
        @basket = Checkout.new(array = [])
        @basket.scan(:GR1)
        @basket.scan(:SR1)
        @basket.scan(:GR1)
        @basket.scan(:GR1)
        @basket.scan(:CF1)
        rules = [
          Rules.bogof.new(array),
          Rules.economy_of_scale.new(array)
        ]
      end

      context 'Test case 1' do

        it 'should return a total price 22.45' do
          @basket.total.should eq 22.45
        end
      end

    end
  end
end
