class Product
 attr_accessor :quantity
 
 def initialize n
   @quantity = n
 end
 
 def total
   @quantity * @price
 end
end