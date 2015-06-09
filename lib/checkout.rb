class Checkout

  def initialize(array)
    @array = array
  end

  def self.total
    @array.reduce(:+)
  end

  def scan(item)
    @array << item
  end
end
