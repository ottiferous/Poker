require 'rspec'
require 'player'
require 'hand'
require 'deck'
require 'card'

describe Player do
  subject :player do
    Deck.new
    @b = Player.new
    @b.get(Deck.new.draw(5))
  end
  
  context 'player ivars' do
    it 'has a name' do
      expect(Player.new(nil, 100, "Marcy").name).to eql("Marcy")
    end
    
    it 'starts with an empty hand' do
      expect(Player.new.hand).to eql(0)
    end
    
    it 'reports how many cards they have' do
      b = Player.new()
      b.get(Deck.new.draw(5))
      expect(b.hand).to eql(5)
    end
    
    it 'has a starting pot of money' do
      expect(Player.new.pot).to eql(100)
    end
  end
  
  context 'can do the following' do
    it 'asks which cards to discard'
    it 'asks if you wish to fold'
    it 'asks if you wish to see'
    it 'asks if you wish to raise'
  end
end