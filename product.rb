class Product
 attr_accessor :quantity, :price, :discount
 
 def initialize n, discount
   @quantity = n
   @discount = discount
 end
 
end