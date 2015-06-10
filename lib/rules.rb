class Rules

  def self.bogof(item)
    product_code = item.keys.first
    price = @basket[:product_code][:price].call(nil)
    count = 0
    @basket.each do |product_code, price|
      count += 1
      count.odd? ? price : 0.0
    end
  end

end
