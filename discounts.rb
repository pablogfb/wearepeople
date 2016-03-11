class Discounts
  def self.calc product
    case product.discount
      when "twoForOne"
        product.quantity.even? ? total = product.price*product.quantity/2 : 
        total = product.price*((product.quantity/2)+1)
      when "overQuantity"
        product.quantity >= 3 ? total = product.quantity*newPrice : #TODO newPrice
        total = product.quantity*product.price
      else
        total = product.quantity*product.price
     end
     total   
  end
end