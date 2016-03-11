require_relative 'product'
require_relative 'unobtainium'
require_relative 'melange'
require_relative 'kryptonita'

class Cart
  attr_accessor :cart
  def initialize(pricing_rules = nil)
    @cart={}
    @pricing_rules = pricing_rules
    @list = {"KR"=> "Kryptonita", "ME" => "Melange", "UN" => "Unobtainium"}
  end

  def add(code)
    @cart[code]? @cart[code]+= 1 :  @cart[code] = 1
  end

  def total
   total = 0
   @cart.each_key {|key| 
     clazz = Object.const_get(@list[key])
     x= clazz.new @cart[key], @pricing_rules[key]
     total += Discounts.calc x
   }
   total
  end
end


