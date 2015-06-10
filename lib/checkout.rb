class Checkout

  attr_accessor :array
  attr_accessor :rules

  def initialize(rules)
    self.array = []
    self.rules = rules
  end

  def scan(item)
    array << Item.new(item)
  end

  def total
    total = @array.inject(0) { |total, item| total + item.price }
    discount = @rules.inject(0) { |discount, rule| discount + rules.enforce(@array) }
    total - discount
  end
end
