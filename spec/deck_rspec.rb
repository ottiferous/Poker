require 'rspec'
require 'deck'
require 'card'

describe Deck do
  subject :deck do
    Deck.new
  end
  
  it 'has 52 cards by default' do
    expect(deck.count).to eql(52)
  end
  it 'has no duplicates in a 52-card deck' do
    unique_array = []
    52.times { unique_array << deck.draw }
    unique_array = unique_array.uniq
    expect(unique_array.size).to eql(52)
  end
  it 'loses a card each time one is drawn' do
    hand_array = []
    rand(20).times { hand_array << deck.draw }
    expect(hand_array.count + deck.count).to eql(52)
  end
  it 'changes order when shuffled' do
    expect(deck).not_to eql(deck.shuffle!)
  end
  
  it 'may have any positive number of cards'

  

end