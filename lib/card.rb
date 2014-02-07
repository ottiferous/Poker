class Card

  attr_reader :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def name
    "#{self.rank} of #{@suit.to_s.capitalize}"
  end
  
  def color
    return :red if @suit == :hearts || @suit == :diamonds
    return :black if @suit == :spades || @suit == :clubs
  end
  
  def value
    @rank
  end
  
  def rank
    case @rank
    when 2..10
      return @rank
    when 14
      return "Ace"
    when 11
      return "Jack"
    when 12
      return "Queen"
    when 13
      return "King"
    end
  end
    
end