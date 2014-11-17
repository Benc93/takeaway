require 'restaurant'
require 'webmock/rspec'

  describe 'restaurant' do 

    let(:restaurant)  { Restaurant.new }
    let(:restaurant_with_order) { double :restaurant, received_order?: true}

    it 'should be able to see an order' do 
      expect(restaurant.received_order?).to be false
      expect(restaurant_with_order.received_order?).to be true
    end

    it 'should be able to send a message' do 
    expect(restaurant).to receive(:send_message).and_return "Message sent"
    restaurant.send_message
    end


  end




