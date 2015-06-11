class Checkout

  attr_accessor :basket, :pricing_rules

  def initialize(basket = [], pricing_rules = [])

    # We initialize the items as an empty array.

    @inventory = Inventory.new

    @basket = []
    @pricing_rules = pricing_rules

  end

  def scan(item)
  	inventory_item = @inventory.items[item]
  	raise 'error' unless inventory_item
    # Each item is simply added to the basket using the
    # shovel syntax.

    @basket << inventory_item.clone
  end

  def total
    PricingRules.bogof(@basket)
    PricingRules.bulk_buy(@basket)
    @basket.map { |i| i[:price] }.reduce(:+)
  end
end
