class Deck

  def initialize
    @cards = []
    [:club, :diamond, :heart, :spade].each do |suit|
      %w[A 2 3 4 5 6 7 8 9 10 J Q K].each do |rank|
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