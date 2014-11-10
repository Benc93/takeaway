require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
 
# put your own credentials here 
account_sid = 'ACcff92f7ff6a8dcf0e731dc0bbc5f1b0d' 
auth_token = '[AuthToken]' 
 
# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new account_sid, auth_token 
 
@client.account.messages.create({
  :from => '+441163262150', 
  :to => '+447414991363', 
  :body => 'Hi! Test test test',  
})