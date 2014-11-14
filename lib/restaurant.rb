class Restaurant

  # require 'rubygems' 
  require 'twilio-ruby' 

  attr_accessor :order

    def initialize
      @order = []
    end

    def received_order?
      order != []
    end

 
    def send_message 

    time = Time.now + (60 * 60)

    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']
    @client = Twilio::REST::Client.new account_sid, auth_token 
     
    @client.account.messages.create({
      :from => ENV['MY_TWILIO'], 
      :to => ENV['MY_CELL'], 
      :body => 'Thanks! Your order will be delivered by #{time.strftime("%H:%M")',  
    })

    end

end