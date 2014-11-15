#End of Week 2 Challenge (Part 2) - Takeaway
   
###Programs, Languages, Technologies employed.  

+ Ruby
+ Rspec
+ Sublime Text
+ Terminal
+ Twilio
+ Github
+ Webmock

    
##Briefing
   
Write a Takeaway app.  
   
Implement the following functionality:
+ List of dishes with prices.   
+ Placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
+ The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
+ Use twilio-ruby gem to access the API
+ Use a Gemfile to manage your gems
+ Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
+ However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent
+ A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.
    

##Execution
   
Based on the briefing - I identified the following classes: **Dish**, **Line Item**, **Menu**, **Order**, **Customer**, **Restaurant**. 

The new concept within this challenge is the use of the Twilio API in order to send a text message. This created a couple of challenges that were not originally considered. Firstly, disabling the API for testing purposes. Secondly - use of the ENV file to protect senstive data contained within the code for the the message. 

Before that however, is the relatively straight forward process of building up an order with contributing classes. 

I decided to fulfil the condition of checking a customer's alleged price at the Line Item level. Nothing can get on to the order unless the line item price matches the dish price * the quantity of the order. This guarantees the validity of the order total. 

The structure builds up from Dish class (given from the Menu class), into a Line Item, into an Order. The Order is compiled by the Customer class (built up using the Line Item class - where the correct totals are checked). The Customer sends the complete order to the Restaurant. At that point the Restaurant can send a text message to the customer as one of it's methods (in fact - the only method for the restaurant).


**END*


