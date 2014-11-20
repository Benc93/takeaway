require 'dish'

describe "Dish" do
  let(:dish)          { Dish.new        }
  let(:lasagne)       { Dish.lasagne    }
  let(:spaghetti)     { Dish.spaghetti  }
  let(:pizza)         { Dish.pizza      }
  let(:veal)          { Dish.veal       }

  it "should initiate with a name" do
   expect(dish.name).to eq "dish"
  end

  it "should initiate with a price" do
   expect(dish.price).to eq 0
  end

  context 'creating new dishes...' do 

    it 'lasagne should have a price of 9' do
    expect(lasagne.price).to eq 9
    end

    it 'spaghetti should have a price of 8' do 
    expect(spaghetti.price).to eq 8 
    end

    it 'pizza should have a price of 7' do 
    expect(pizza.price).to eq 7
    end

    it 'veal should have a price of 13' do 
    expect(veal.price).to eq 13
    end

  end

end