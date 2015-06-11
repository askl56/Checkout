class Checkout

  attr_accessor :basket, :pricing_rules

  def initialize(pricing_rules = PricingRules.new)

    # We initialize the items as an empty array.

    @basket = []
    @pricing_rules = pricing_rules
    @inventory = Inventory.new

  end

  def scan(item)

    inventory_item = @inventory.items[item]
    raise 'error' unless inventory_item

    # Each item is simply added to the basket using the
    # shovel syntax.

    @basket << inventory_item.clone
  end

  def total
    @pricing_rules.bogof(@basket)
    @pricing_rules.bulk_buy(@basket)
    @basket.map { |i| i[:price] }.reduce(:+)
  end
end
