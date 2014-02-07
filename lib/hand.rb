class Hand

  def initialize(cards = nil)
    @cards = cards
  end
  
  def count
    @cards.nil? ? 0 : @cards.count
  end
  
  def take(cards)
    cards.each do |card|
      @cards << card
    end
  end
  
  
end