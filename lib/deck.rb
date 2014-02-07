class Deck

  def initialize
    @cards = []
    [:clubs, :diamonds, :hearts, :spades].each do |suit|
      [1, 2, 3, 4,5, 6, 7, 8, 9, 10, 11, 12, 13].each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end

  def count
    @cards.count
  end
  
  def draw(num=1)
    @cards.pop(num)
  end
  
  def shuffle!
    @cards.shuffle
    true
  end
  
end