require 'item'

describe Item do
  describe 'creating a new item' do
    context 'when item code is SR1' do
      before(:each) do
        @item = Item.new(:SR1)
      end

      it 'name should be be correct' do
        expect(@item.name).to eq 'Strawberries'
      end

      it 'price should be correct' do
        expect(@item.price).to eq 5.00
      end
    end

    context 'when item code is GR1' do
      before(:each) do
        @item = Item.new(:GR1)
      end

      it 'name should be correct' do
        expect(@item.name).to eq 'Green Tea'
      end

      it 'price should be 3.11' do
        expect(@item.price).to eq 3.11
      end
    end

    context 'when product code is CF1' do
      before(:each) do
        @item = Item.new(:CF1)
      end

      it 'name should be correct' do
        expect(@item.name).to eq 'Coffee'
      end

      it 'price should be correct' do
        expect(@item.price).to eq 11.23
      end
    end
  end
end
