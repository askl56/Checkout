class Checkout

  attr_accessor :basket, :pricing_rules

  def initialize

    # We initialize the items as an empty array.

    @basket = basket
    @pricing_rules = pricing_rules

  end

  def scan(item)

  	# Each item is simply added to the basket using the
  	# shovel syntax.

    @basket << item
  end

  def total

  end
end
