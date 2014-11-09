require 'dishes'

describe "Dishes" do
     let(:dish) { Dish.new }

  it "should initiate with a name" do
    dish = Dish.new("Burger", 5)
    expect(dish.name).to eq "Burger"
  end

  it "should initiate with a price" do
    dish = Dish.new("Burger", 5)
    expect(dish.price).to eq 5
  end

end