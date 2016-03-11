class Melange < Product
  def initialize n
    @quantity = n
    @price = 42
  end
  
  def total
    @quantity >= 3 ? @quantity*33.33 : @quantity*@price
  end
end