class Checkout

  attr_reader :basket

  def initialize

    # We initialize the basket as an empty hash.

    @basket = {}

  end

  def scan(item)

    # First key in the Item has is the Product code, we want to check if the
    # basket already contains the that code, aka the item.

    # If it does, increment key-value pair (quantity: 1).

    # Otherwise

    product_code = item.keys.first

    if @basket.has_key? product_code
      @basket[:product_code][:quantity] += 1
    else
      @basket[:product_code] = item
      @basket[:product_code][:quantity] = 0
    end
  end

  def total
    @basket.inject(:+)
  end
end
