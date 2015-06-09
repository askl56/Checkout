class Item
  attr_accessor :name, :price

  def initialize(product_code)
    case product_code
    when :GR1
      @name = 'Green Tea'
      @price = 3.11
    when :SR1
      @name = 'Strawberries'
      @price = 5.00
    when :CF1
      @name = 'Coffee'
      @price = 11.23
    end
  end
end
