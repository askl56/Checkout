class CustomProducts

  @custom = Hash.new

  def self.product(code, name, price)
    @custom[code] = { :name => name, :price => price}
  end

  def bogof(array)
    count(:GR1, array) / 2 * 3.11
  end
end
