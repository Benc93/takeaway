require 'order'

describe Order do 

  let (:order)         {Order.new                                                 }
  let (:lasagne_item)  {double :line_item, dish: :lasagne, quantity: 3, total: 24 }
  let (:pizza_item)    {double :line_item, dish: :pizza,   quantity: 2, total: 14 }
  let (:customer)      {double :customer                                          }

  context 'The order should...' do

    it 'by default contain no line items' do 
      expect(order.contents).to eq []
    end

    it 'be able to add line items' do 
      order.add(lasagne_item)
      expect(order.contents.count).to eq 1
    end

    it 'be able to add multiple line items' do 
      order.add(lasagne_item)
      order.add(pizza_item)
      expect(order.contents.count).to eq 2
    end

    it 'be able to show an order total' do 
      order.add(lasagne_item)
      order.add(pizza_item)
      expect(order.price).to eq 38
    end

    it 'allow the customer to be added' do 
      expect(order.include_customer(customer)).not_to be nil
    end

  end

end