class Kryptonita < Product
  def initialize n
    super
    @price = 3.14
  end
  
  def total
    @quantity.even? ? @price*@quantity/2 : @price*((@quantity/2)+1)
  end
end