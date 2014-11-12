class Menu 

  attr_reader :dishes

  def initialize
    @dishes = [Dish.lasagne, Dish.spaghetti, Dish.pizza, Dish.veal]
  end

  def dishes_count
    @dishes.count
  end

  # def add(dish)
  #   dishes << dish
  # end

  # def remove(dish)
  #   dishes.delete(dish)
  # end

end

