require 'menu'

describe "Menu" do

   let(:menu) { Menu.new }

   it "should initialize containing all dishes" do
    expect(menu.dishes_count).to eq 4  
   end


end