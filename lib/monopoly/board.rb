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

  def draw
    template = File.read("index.html.erb")
    renderer = ERB.new(template)
    File.open('index.html', 'w').write(renderer.result(self.get_binding))
  end

  def render_top_cards
    html = ''
    cards.each {|card| html << card.draw }
    html
  end

  def render_sides_cards
    html = ''
    rows = sides_cards.map{|row| CardRow.new(row[0], row[1])}
    rows.each {|row| html << row.draw }
    html
  end

  def get_binding
    binding
  end

end
