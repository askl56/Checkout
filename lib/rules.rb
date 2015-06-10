class Rules

  def self.enforce(cart)
    economy_of_scale(cart) + bogof(cart)
  end

  def self.bogof(cart)
    count('Strawberries', cart) / 2.0 * 3.11
  end

  def self.economy_of_scale(cart)
    discount = count('Green Tea', cart)
    discount >= 3 ? discount * 0.50 : 0
  end

  private

  def self.count(name, cart)
    cart.inject(0) do |count, product|
      product.name == name ? count + 1 : count
    end
  end
end
