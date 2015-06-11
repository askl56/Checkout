class PricingRules

  def self.bogof(basket)
    if basket.select { |i| i[:code] == 'GR1' }.count > 2
      basket.each { |items| items.find_all{ |item| item[:code] == 'GR1' }.each_with_index { |item, i| item[:price] = 0 if i.odd? } }
    end
  end

  def self.bulk_buy(basket)
    if basket.select { |i| i[:code] == 'SR1' }.count >= 3
      basket.each { |items| items.each { |item| item[:price] = 4.5 if item[:code] == 'SR1'}}
    end
  end
end
