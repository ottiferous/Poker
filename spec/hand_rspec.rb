require 'rspec'
require 'hand'
require 'deck'
require 'card'

describe Hand do
  subject :hand do
    d = Deck.new
    d.shuffle!
    drawn_cards = d.draw 5
    h = Hand.new(drawn_cards)
    h
  end
  
  context 'has the basic atrributes of' do
    it 'can be empty' do
      expect(Hand.new.count).to eql(0)
    end
    it 'can hold 5 cards' do
      expect(hand.count).to eql(5)
    end
    it 'showing how many cards it has' do
      expect(hand.count).to be_a(Fixnum)
    end
      
    it 'prohibits a direct change to a card value' do
      expect{hand.cards = "Foo"}.to raise_error(NoMethodError)
    end
  end
  

  context 'knows how to find' do
    it 'the highest value card'
    it 'one pair'
    it 'two pair'
    it 'three of a kind'
    it 'a straight'
    it 'a flush'
    it 'a full house'
    it 'a four of a kind'
    it 'a straight flush'
  end
end
  