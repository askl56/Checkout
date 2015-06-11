class Checkout

  attr_accessor :basket, :pricing_rules

  def initialize

    # We initialize the items as an empty array.

    @basket = basket
    @pricing_rules = pricing_rules

  end

  def scan(item)
    @basket << item
  end

  def total
    @pricing_rules.each do |pricing_rule|
      pricing_rule.action.call(@basket) if pricing_rule.condition.call(@basket)
    end
    @basket.inject(0) {|sum, item| sum + item.price}
  end
end
