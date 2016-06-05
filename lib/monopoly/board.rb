class Board

  attr_accessor :cards, :sides_cards

  SIZE = 10
  VERTICAL = 0
  HORIZONTAL = 1

  def initialize
    @top_cards = [
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

    @bottom_cards = [
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
  end

  def get_cards
    return @top_cards, @sides_cards, @bottom_cards
  end

end
