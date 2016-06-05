class Board

  attr_accessor :cards, :sides_cards, :players

  SIZE = 10
  VERTICAL = 0
  HORIZONTAL = 1

  def initialize

    @players = [Player.new]

    @cards = [
      JailCard.new, 
      HCard.new, 
      HCard.new, 
      HCard.new, 
      HCard.new, 
      HCard.new, 
      HCard.new, 
      HCard.new, 
      HCard.new,
      HCard.new,
      FreeParkingCard.new,
      VCard.new,
      VCard.new,
      VCard.new,
      VCard.new,
      VCard.new,
      VCard.new,
      VCard.new,
      VCard.new,
      VCard.new,
      JailCard.new,
      HCard.new,
      HCard.new,
      HCard.new,
      HCard.new,
      HCard.new,
      HCard.new,
      HCard.new,
      HCard.new,
      HCard.new,
      JailCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new,
      VCard.new,
    ]
    @top_cards = cards[10..20]
    @sides_cards = [
      [cards[9], cards[21]], 
      [cards[8], cards[22]], 
      [cards[7], cards[23]], 
      [cards[6], cards[24]], 
      [cards[5], cards[25]], 
      [cards[4], cards[26]],
      [cards[3], cards[27]],
      [cards[2], cards[28]],
      [cards[1], cards[29]]
    ]
    @bottom_cards = [cards[0], cards[30..40].reverse].flatten

    @cards[0].set_player(player: Player.new)

  end

  def get_cards
    return @top_cards, @sides_cards, @bottom_cards
  end

  def set_position(player: player, position:)
    @cards[player.position].remove_player(player: player)
    @cards[position].set_player(player: player)
    player.position = position
  end

end
