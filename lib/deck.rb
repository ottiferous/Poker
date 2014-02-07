class Deck
  
  attr_reader :count
  def initialize
    @cards = []
    %w[:club :diamond :heart :spade].each do |suit|
      %w[A 2 3 4 5 6 7 8 9 10 J Q K].each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
    @count = @cards.count
  end
  
end