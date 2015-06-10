class Checkout
  def initialize
    @basket = []
  end

  def scan(item)
    @basket << item
  end

  def total
  end
end
