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

      if received_order?

      time = Time.now + (60 * 60)

      account_sid = ENV['ACCOUNT_SID']
      auth_token = ENV['AUTH_TOKEN']
      @client = Twilio::REST::Client.new account_sid, auth_token 
       
      @client.account.messages.create(:body => "Thanks! Your order will be delivered by #{time.strftime("%R")}",
        :from => ENV['MY_TWILIO'], 
        :to => ENV['MY_CELL'])

      "Message Sent"

      else "No order to confirm"

      end

    end

end