require 'customer'

describe 'customer' do 

  let(:customer)   { Customer.new("Ben", +447414991363) }
  let(:restaurant) { Restaurant.new                     }
    

  it 'should have a name' do 
    expect(customer.name).to eq "Ben"
  end

  it 'should have a default cell number' do 
    expect(customer.number).to eq +447414991363
  end

  it 'can add items to an order' do 
    customer.add_to_order(Dish.lasagne, 2, 18)
    expect(customer.order.count).to eq 1
  end

  it 'can submit an order to restaurant' do 
    customer.send_order(restaurant)
    expect(customer.order).to eq nil
    expect(restaurant.order.count).to eq 1
  end

  

end