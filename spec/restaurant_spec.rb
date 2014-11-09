require 'restaurant'

describe 'Restaurant' do 

  let(:bakarah) { Restaurant.new("bakarah") }
  let(:indian) { double :menu }

  it 'should get a name' do 
    expect(bakarah.name).to eq "bakarah"
  end

  it 'can add a menu' do 
    bakarah.add_menu(indian)
    expect(bakarah.list_of_menus.count).to be 1
  end

  it 'can delete a menu' do 
    bakarah.add_menu(indian)
    bakarah.delete_menu(indian)
    expect(bakarah.list_of_menus.count).to be 0
  end

end