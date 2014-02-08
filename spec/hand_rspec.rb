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
  
  context 'can find the following' do
    let!(:sample_hand) do
      a = []
      a << Card.new(2, :hearts)
      a << Card.new(3, :spades)
      a << Card.new(4, :diamonds)
      a << Card.new(5, :clubs)
      a << Card.new(2, :spades)
      @b = Hand.new(a)
    end
    
    it 'the highest value card' do
      expect(@b.high_card?).to eql(5)
    end
    
    it 'one pair' do
      expect(@b.one_pair?).to eql(true)
    end
    
    it 'two pair' do
      a = []
      a << Card.new(2, :hearts)
      a << Card.new(3, :spades)
      a << Card.new(4, :diamonds)
      a << Card.new(3, :clubs)
      a << Card.new(2, :spades)
      b = Hand.new(a)
      expect(b.two_pair?).to eql(true)
    end
    
    it 'three of a kind' do
      a = []
      a << Card.new(2, :hearts)
      a << Card.new(2, :clubs)
      a << Card.new(4, :diamonds)
      a << Card.new(5, :clubs)
      a << Card.new(2, :spades)
      b = Hand.new(a)
      expect(b.three_of_a_kind?).to eql(true)
    end
    
    it 'a straight' do
      a = []
      a << Card.new(2, :hearts)
      a << Card.new(3, :clubs)
      a << Card.new(4, :diamonds)
      a << Card.new(5, :clubs)
      a << Card.new(6, :spades)
      b = Hand.new(a)
      expect(b.straight?).to eql(true)
    end
    
    it 'a flush' do
      a = []
      a << Card.new(2, :hearts)
      a << Card.new(3, :hearts)
      a << Card.new(4, :hearts)
      a << Card.new(5, :hearts)
      a << Card.new(6, :hearts)
      b = Hand.new(a)
      expect(b.flush?).to eql(true)
    end
    
    it 'a full house' do
      a = []
      a << Card.new(2, :hearts)
      a << Card.new(2, :clubs)
      a << Card.new(4, :diamonds)
      a << Card.new(4, :clubs)
      a << Card.new(2, :spades)
      b = Hand.new(a)
      expect(b.full_house?).to eql(true)
    end
    
    it 'a four of a kind' do
      a = []
      a << Card.new(2, :hearts)
      a << Card.new(2, :clubs)
      a << Card.new(4, :diamonds)
      a << Card.new(2, :diamonds)
      a << Card.new(2, :spades)
      b = Hand.new(a)
      expect(b.four_of_a_kind?).to eql(true)
    end
    
    it 'a straight flush' do
      a = []
      a << Card.new(2, :hearts)
      a << Card.new(3, :hearts)
      a << Card.new(4, :hearts)
      a << Card.new(5, :hearts)
      a << Card.new(6, :hearts)
      b = Hand.new(a)
      expect(b.straight_flush?).to eql(true)
    end
  end
end
  