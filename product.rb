class Product
 attr_accessor :quantity, :code, :name
 
 def initialize n
   @quantity = n
 end
 
 def total
   @quantity * @price
 end
end