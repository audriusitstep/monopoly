class Board

  attr_accessor :cards, :sides_cards

  SIZE = 10
  VERTICAL = 0
  HORIZONTAL = 1

  def initialize
    @cards = [
      JailCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new, 
      VCard.new,
      FreeParkingCard.new
    ]

    @sides_cards = [
      [HCard.new, HCard.new], 
      [HCard.new, HCard.new], 
      [HCard.new, HCard.new], 
      [HCard.new, HCard.new], 
      [HCard.new, HCard.new], 
      [HCard.new, HCard.new], 
      [HCard.new, HCard.new], 
      [HCard.new, HCard.new] 
    ]
  end

  def get_top_cards
    @cards
  end

end
