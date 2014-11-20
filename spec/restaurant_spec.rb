require 'restaurant'

describe 'restaurant' do 

  let(:restaurant)            { Restaurant.new }
  let(:restaurant_with_order) { double :restaurant, received_order?: true}
  let(:client)                { double :client}

  it 'should be able to see an order' do 
    expect(restaurant.received_order?).to be false
    expect(restaurant_with_order.received_order?).to be true
  end

  it 'should be able to send a message' do 
    expect(restaurant).to receive(:received_order?).and_return true
    expect(client).to receive_message_chain(:account, :messages, :create)
    expect(Twilio::REST::Client).to receive(:new).and_return(client)
    expect(restaurant.send_message).to eq "Message Sent"
  end

end




