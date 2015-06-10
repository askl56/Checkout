class Checkout
  def initialize
    @basket = []
  end

  def scan(item)
    @basket << item
  end

  def total
    @basket.each do |item|
      if has_rule?(item)
        adjust_item
      end
    end
  end

  def has_rule?(item)
    if pricing_rules.include? item
      true
    else
      false
    end
  end
end
