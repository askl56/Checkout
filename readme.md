Our quest for world domination has prompted us to open a convenience store - we sell only three products:


Product code | Name         | Price
-------------|--------------|----------
GR1          | Green tea    |  Â£3.11
SR1          | Strawberries |  Â£5.00
CF1          | Coffee       |  Â£11.23

 
The CEO is a big fan of buy-one-get-one-free offers and of green tea. He wants us to add a rule to do this.
 
The COO, though, likes low prices and wants people buying strawberries to get a price discount for bulk purchases. If you buy 3 or more strawberries, the price should drop to Â£4.50.
 
Our check-out can scan items in any order, and because the CEO and COO change their minds often, it needs to be flexible regarding our pricing rules.
 
The interface to our checkout looks like this (shown in ruby):
 
 ```ruby
 co = Checkout.new(pricing_rules)
 co.scan(item)
 co.scan(item)
 price = co.total
 ```
 
Implement a checkout system that fulfills these requirements.
 
Test data
---------
 
1. Basket: GR1,SR1,GR1,GR1,CF1  
   Total price expected: Â£22.45
 
2. Basket: GR1,GR1  
   Total price expected: Â£3.11
 
3. Basket: SR1,SR1,GR1,SR1  
   Total price expected: Â£16.61
