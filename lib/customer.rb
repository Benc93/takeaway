class Customer

  attr_reader :number
  attr_reader :name
  attr_accessor :order

  def initialize(name, number)
    @name      = name
    @number    = number 
    @order     = Order.new
  end

  def add_to_order(dish, quantity, total)
    line_item     = LineItem.new(dish, quantity)
    alleged_total = total 
      
      if placed_good_order?(line_item, alleged_total)
        order.add(line_item)
      else 
        puts "Invalid order, please submit again"
      end
  end

  def placed_good_order?(line_item, alleged_total)
    line_item.total == alleged_total
  end

  def send_order(restaurant)
    restaurant.order << self.order
    @order = nil
  end



end