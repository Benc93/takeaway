require 'customer'

describe 'Customer' do 

  let(:customer) { Customer.new("Ben", +447414991363) }

  it 'should have a name' do 
    expect(customer.name).to eq "Ben"
  end

  it 'should have a cell number' do 
    expect(customer.number).to eq +447414991363
  end


end