class LineItem

  attr_accessor :dish, :quantity 

  def initialize(dish, quantity)
    @dish     = dish
    @quantity = quantity
  end

  def total
    @dish.price * quantity
  end
 
end