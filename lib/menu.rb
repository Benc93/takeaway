class Menu 

  attr_reader :dishes

  def initialize
    @dishes = [Dish.lasagne, Dish.spaghetti, Dish.pizza, Dish.veal]
  end

  def dishes_count
    @dishes.count
  end

end

