def create_deck
  all_card_values = ["1","2","3","4","5","6","7","8","9","J","Q","K","A"]
  all_suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
  new_deck = []

  all_suits.each {|suit|
    all_card_values.each {|value|
      new_deck << {:value => value, :suit => suit}
    }
  }
  new_deck
end

def deal_cards(deck, player_hands)
  player_hands.each {|hand|
    hand << deck.pop
  }
  [deck, player_hands]
end

def setup_game(number_of_players)
  player_hands = []
  number_of_players.times do
    player_hands << []
  end

  deck = create_deck
  deck = deck.shuffle
  deck = deck.shuffle

  if number_of_players == 2
    7.times do
      deck, player_hands = deal_cards(deck, player_hands)
    end
  else
    5.times do
      deck, player_hands = deal_cards(deck, player_hands)
    end
  end

  [deck, player_hands]
end

def start_game(number_of_players = 2)
  raise "Game requires 2-6 players" if !(2..6).include? number_of_players
  deck, player_hands = setup_game(number_of_players)

  {:deck => deck, :player_hands => player_hands}
end
