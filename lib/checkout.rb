class Checkout

  attr_accessor :array

  def initialize(rules)
    @array = []
    @rules = rules
  end

  def scan(item)
    @array << item
  end

  def self.total
    total = @array.inject(0) { |total, product| total + product.price }
    discount = @rules.inject(0) { |discount, rule| discount + rules.enforce(@array) }
    total - discount
  end
end
