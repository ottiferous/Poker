class Card

  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def name
    "#{@rank} of #{@suit.to_s}"
  end
  
  def color
    return :red if @suit == :hearts || @suit == :diamonds
    return :black if @suit == :spades || @suit == :clubs
  end
end