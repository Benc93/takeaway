require 'menu'

describe "Menu" do

  let(:menu) { Menu.new }
  let(:burger) { double :dish }
  let(:kebab) { double :dish }

  it "should be able to add dishes" do
    menu.add(burger)
    expect(menu.dishes).to eq [burger]
  end

  it "should be able to remove dishes" do
    menu.add(kebab)
    menu.remove(kebab)
    expect(menu.dishes).to eq []
  end

  it "should be able to show the menu" do
    menu.add(burger)
    menu.add(kebab)
    expect(menu.dishes).to eq [burger, kebab]
  end

end