class Customer

  attr_reader :number, :name
  attr_reader :order

  def initialize(name, number)
    @name      = name
    @number    = number 
    @order     = Order.new
  end

  def add_to_order(dish, quantity, total)
    line_item     = LineItem.new(dish, quantity)
    alleged_total = total 
    raise "Invalid order, please submit again" unless placed_good_order?(line_item, total)
    order.add(line_item)
  end

  def placed_good_order?(line_item, alleged_total)
    line_item.total == alleged_total
  end

  def send_order(restaurant)
    restaurant.order << self.order
    @order = nil
  end



end