class Checkout
  require "item"

  def initialize(pricing_rules)
    @array = Array.new
    @pricing_rules = pricing_rules
  end

  def self.total
    @array.reduce(:+)
  end

  def scan(item)
    @array << item
  end

  private

  def pricing_rules

  end
end
