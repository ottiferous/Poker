class Game
  
  attr_reader :pot
  def initialize
    @Deck = Deck.new
    @pot = 0
    @players = []
  end
  
  def create_players
    @players << Player.new
    @players << Player.new
    @players << Player.new
  end
  
  def cards_left?
    @Deck.count
  end
  
  def raise_pot(value)
    @pot += value
  end
  
  def play_round(player)
  end
  
end