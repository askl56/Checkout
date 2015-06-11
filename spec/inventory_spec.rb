require 'inventory'

describe Inventory do
  let(:inventory) { Inventory.new }

  context "verify hash data" do
    describe "expect hash to contain correct symbols" do
      it "contains the correct code for Strawberries" do
        expect(inventory.items).to include(:SR1)
      end
      it "contains the correct code for Green Tea" do
        expect(inventory.items).to include(:GR1)
      end
      it "contains the correct code for Coffee" do
        expect(inventory.items).to include(:CF1)
      end
    end

    describe "expect hash to contain correct names" do
      it "contains the correct name for Strawberries" do
        expect(inventory.items).to include("Strawberries")
      end

      it "contains the correct name for Green Tea" do
        expect(inventory.items).to include("Green Tea")
      end

      it "contains the correct name for Coffee" do
        expect(inventory.items).to include("Coffee")
      end
    end

    describe "expect hash to contain correct prices" do
      it "contains the correct price for Strawberries" do
        expect(inventory.items).to include(5.0)
      end
      it "contains the correct price for Green Tea" do
        expect(inventory.items).to include(3.11)
      end

      it "contains the correct price for Coffee" do
        expect(inventory.items).to include(11.23)
      end
    end
  end
end
