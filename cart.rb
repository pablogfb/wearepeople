require_relative 'product'
require_relative 'unobtainium'
require_relative 'melange'
require_relative 'kryptonita'

class Cart
  attr_accessor :cart
  def initialize(pricing_rules = nil)
    @cart={}
  end

  def add(code)
    @cart[code]? @cart[code]+= 1 :  @cart[code] = 1
  end

  def total
   total = 0
   if self.cart["KR"] != nil
     kr = Kryptonita.new self.cart["KR"]
     total += kr.total
   end
   
   if self.cart["ME"] != nil
     me = Melange.new self.cart["ME"]
     total += me.total
   end
   
   if self.cart["UN"] != nil
     un = Unobtainium.new self.cart["UN"]
     total += un.total
   end
   total
  end
end


