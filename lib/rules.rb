class Rules

  def self.enforce(cart)
  end

  def bogof(cart)
    count('Strawberries', cart) / 2 * 3.11
  end

  def economy_of_scale(cart)
    discount = count('Green Tea', cart)
    discount >= 3 ? discount * 0.50 : 0
  end

  private

  def count(name, cart)
    cart.inject(0) do |count, product|
      product.name == name ? count + 1 : count
    end
  end
end
