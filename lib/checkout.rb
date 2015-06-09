class Checkout
  require "item"

  def initialize(array)
    @array = array
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
