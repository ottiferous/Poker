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
  it 'has no duplicates by default'
  it 'changes order when shuffled'
  it 'may have any positive number of cards'

  

end