class Checkout

  attr_accessor :cart

  def initialize(rules)
    @cart = Array.new
    @rules = rules
  end

  def scan(code)
    @cart << Item.new(code)
  end

  def total
    total = @cart.inject(0) { |total, item| total + item.price }
    discount = @rules.inject(0) { |discount, rule| discount + rules.enforce(@array) }
    total - discount
  end
end
