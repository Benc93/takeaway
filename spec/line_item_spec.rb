require 'line_item'
  
describe LineItem do 

  let(:line_item) { LineItem.new(pizza, 3) }
  let(:pizza)     {double :pizza, name: :pizza, price: 7 }

  it 'should show the name of a dish' do 
    expect(line_item.dish.name).to eq(:pizza)
  end 

  it 'should also know the price of a dish' do 
    expect(line_item.dish.price).to eq 7
  end

  it 'should show the quantity of the order' do 
    expect(line_item.quantity).to eq 3
  end

  it 'should sum up the line_item total' do 
    expect(line_item.total).to eq 21
  end

end