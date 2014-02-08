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
      
  def straight_flush?
    return true if self.straight? && self.flush?
    false
  end
  
  def four_of_a_kind?
    count_hash = Hash.new(0)

    @cards.each do |card|
      count_hash[card.rank] += 1
    end
    
    return true if count_hash.has_value? 4
    false
  end
  
  def full_house?
    return true if self.three_of_a_kind? && self.one_pair?
    false
  end

  def flush?
    suit_array = []
    @cards.each do |card|
      suit_array << card.suit
    end
    
    return true if suit_array.uniq.length == 1

    false
  end

  def straight?
    rank_array = []
    @cards.each do |card|
      rank_array << card.rank
    end
    
    check_sum = []
    rank_array.reverse.each_with_index{ |el, i| check_sum << el + i }

    return true if check_sum.uniq.length == 1
    false
  end
  
  def three_of_a_kind?
    count_hash = Hash.new(0)

    @cards.each do |card|
      count_hash[card.rank] += 1
    end
    
    return true if count_hash.has_value? 3
    false
  end
    
  def two_pair?
    count_hash = Hash.new(0)

    @cards.each do |card|
      count_hash[card.rank] += 1
    end
    
    return true if count_hash.select!{ |k,v| v == 2}.length == 2
    false
  end
  
  def one_pair?
    count_hash = Hash.new(0)
    
    @cards.each do |card|
      count_hash[card.rank] += 1
    end
    
    return true if count_hash.has_value? 2
    false
  end
  
  def high_card?
    value_array = []
    
    @cards.each do |card|
      value_array << card.rank
    end
    
    return value_array.max
  end
 
end