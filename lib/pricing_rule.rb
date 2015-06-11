class PricingRules

  def self.bogof(basket)
    basket.each { |items| items.count {|item| item.code == 'GR1'} >= 2 }
    basket.each { |items| items.find_all{ |item| item.code == 'GR1' }.each_with_index { |item, i| item.price = 0 if i.odd? } }
  end

  def self.bulk_buy(basket)
    basket.each { |items| items.count { |item| item.code == 'SR1'} >= 3 }
    basket.each { |items| items.each { |item| item.price = 4.5 if item.code == 'SR1'}}
  end
end
