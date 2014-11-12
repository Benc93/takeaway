require 'order'

  describe Order do 

      let (:order)      {Order.new}
      let (:line_item)  {LineItem.new}


    context 'The order should...'

      it 'be able to contain line items' do 
        expect(order.contents).to eq []
      end

      # it 'be able to add line items' do 
      #   order.add(line_item)
      #   expect(order.contents.count).to eq 1
      # end

    end
