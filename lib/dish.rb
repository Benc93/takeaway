class Dish

  attr_reader :name, :price

  def initialize(name: 'dish', price: 0)
    @name = name
    @price = price
  end

  def self.lasagne
    new(name: 'Lasagne al Forno', price: 9)
  end

  def self.spaghetti
    new(name: 'Spaghetti Carbonara', price: 8)
  end

  def self.pizza
    new(name: 'Pizza especiale', price: 7)
  end

  def self.veal
    new(name: 'Veal Milanese', price: 13)
  end

end