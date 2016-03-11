class Product
 attr_reader :quantity, :price, :discount, :newPrice
 
 def initialize n, discount
   @quantity = n
   @discount = discount
 end
 
end