require 'restaurant'
require 'webmock/rspec'

  describe 'restaurant' do 

    let(:restaurant)  { Restaurant.new }
    let(:restaurant_with_order) { double :restaurant, received_order?: true}

    it 'should be able to see an order' do 
      expect(restaurant.received_order?).to be false
      expect(restaurant_with_order.received_order?).to be true
    end

    it 'should send a message when an order arrives' do 

     # WebMock.disable_net_connect!(:allow_localhost => true)

     # WebMock.stub_request(:post, "https://ACf891aedee1ec01bfe33224d882a65314:3e28b3a32fbd64fd596f26e089e97e33@api.twilio.com/2010-04-01/Accounts/ACf891aedee1ec01bfe33224d882a65314/Messages.json").
     #  with(:body => {"Body"=>"Thank you! \n\t\t\tYour order will be delivered by 20.20", "From"=>"+441163262150", "To"=>"+447414991363"},
     #  :headers => {'Accept'=>'application/json', 'Accept-Charset'=>'utf-8', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type'=>'application/x-www-form-urlencoded', 'User-Agent'=>'twilio-ruby/3.13.1 (ruby/x86_64-darwin13.0 2.1.2-p95)'}).
     #  to_return(:status => 200, :body => "", :headers => {})
    end


  end




