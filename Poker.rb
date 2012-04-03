class Card

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end

  def inspect
    "[#{@rank}, #{suit}]"
  end

  def rank
    11 if @rank == "J"
    12 if @rank == "Q"
    13 if @rank == "K"
    @rank
  end

  def suit
    @suit[0].chr
  end

  # Only the club works in this set - not sure why
  def suit_later
    "\342\231\240" if @suit == "Spade"
    "\342\231\245" if @suit == "Heart"
    "\342\231\246" if @suit == "Diamond"
    "\342\231\243" if @suit == "Club"
  end

  def show
    "#{@rank}-#{suit}"
  end

  def color
    "Red" if suit == "Heart" || suit == "Diamond"
    "Black" if suit == "Spade" || suit == "Club"
  end
end

class Deck

  def initialize
    @cards = []
    %w[Club Diamond Heart Spade].each do |suit|
      %w[A 2 3 4 5 6 7 8 9 10 J Q K].each do |rank|
        @cards << Card.new(suit, rank)
      end
    end 
  end
  
  def draw
    @cards.shuffle!
    @cards.pop
  end

  def card(x)
    @cards[x].inspect
  end

end

class Hand

  def initialize
    @cards = []
  end

  def add(card)
    @cards << card
  end

  def rank
    a = []
    @cards.each do |card|
      a << card.rank
    end
    a.sort
  end

  def flush?
    true if ( (@cards[0].suit == @cards[1].suit) &&
              (@cards[0].suit == @cards[2].suit) &&
              (@cards[0].suit == @cards[3].suit) &&
              (@cards[0].suit == @cards[4].suit)
            )
  end

  def straight?
    b = self.rank
    true if ( b[0] == (b[1]-1) &&
              b[0] == (b[2]-2) &&
              b[0] == (b[3]-3) &&
              b[0] == (b[4]-4)
            )
  end

  def straightflush?
    true if (self.flush? && self.straight?)
  end

  def of_a_kind?
    a = self.rank
    freq = a.inject(Hash.new(0)) { |k,v| k[v] += 1; k}

    a.uniq.each do |key|
      puts freq[key]
    end
  end

  def pair?
    a = self.rank
    (0..4).each do |x|
      a.shift if a[x] != a[x+1]
  end

end

deck = Deck.new
hand = Hand.new
5.times do |x|
  a = deck.draw
  print "Value is: #{a.show}\n"
  hand.add(a) 
end

puts "You have a flush!" if hand.flush?
