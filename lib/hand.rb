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
  
  def eval
    
  end
  
  def find_high_card
    high_card = Card.new(0, :empty)
    @cards.each do |card|
      high_card = card if card.value > high_card.value
    end
    
    high_card
  end
  
end