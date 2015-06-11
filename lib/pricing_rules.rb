class PricingRules

  def bogof(basket)
    if basket.select { |i| i[:code] == 'GR1' }.count > 2
      basket.each_with_index { |item, i| item[:price] = 0.00 if i.even? && item[:code] == 'GR1' }
    end
  end

  def bulk_buy(basket)
    if basket.select { |i| i[:code] == 'SR1' }.count >= 3
      basket.each { |items| items[:price] = 4.5 if items[:code] == 'SR1' }
    end
  end
end
