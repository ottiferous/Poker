require 'rspec'
require 'card'

describe Card do
  subject :card do
    Card.new(12, :hearts)
  end
  
  it 'needs a suit and rank when created' do
    expect{ Card.new() }.to raise_error ArgumentError
  end
  it 'can report its color' do
    expect(card.color).to eql(:red)
  end
  it 'can report its English name' do
    expect(card.name).to eql("12 of hearts")
  end
  it 'can report its suit' do
    expect(card.suit).to eql(:hearts)
  end
  
end
    