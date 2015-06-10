module Rules

  def enforce(array)
  end

  module_function

  def bogof(array)
    count(:GR1, array) / 2 * 3.11
  end

  def economy_of_scale(array)
    berry_discount = count(:SR1, array)
    berry_discount >= 3 ? berry_discount * 0.50 : 0
  end

  def count(name, array)
    array.inject(0) do |count, product|
      product.name == name ? count + 1 : count
    end
  end
end
