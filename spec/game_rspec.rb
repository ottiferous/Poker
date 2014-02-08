require 'rspec'
require 'game'
require 'player'
require 'hand'
require 'deck'
require 'card'

describe Game do
  subject :game do
    Game.new
  end
  
  it 'holds the deck' do
    expect(Game.new.cards_left?).to eql(52)
  end
  
  it 'keeps track of the turns'
  it 'tracks the pot value' do
    expect(Game.new.pot).to eql(0)
  end
  
end