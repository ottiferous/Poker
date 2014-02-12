class Player
  
  attr_reader :pot, :name
  def initialize(hand=nil, pot=100, name="Player ")
    @hand = hand.nil? ? [] : hand
    @pot = pot
    @name = (name == "Player " ? name + rand(100).to_s : name)
  end
  
  def get(cards)
    cards.each { |card| @hand << card }
  end
  
  def hand
    @hand.length
  end
  
  def discard?
    puts "Which card(s) do you want to discard?"
    @hand.each_with_index do |card, index|
      puts "#{index} - #{card.name}"
      get_input
    end
    
  end
  
  def get_input
    
    begin
      print "> "
      regex = /[([0-5]{1,5})\s+]+/
      str = gets.chomp.split(' ').match(regex)
      str
    rescue
      puts "That was invalid input. Try again."
      retry
    end
  end
  
  def menu_options
    
end
