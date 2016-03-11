class Melange < Product
  def initialize n, discount
    super
    @price = 42
    @newPrice = 33.33
  end
end