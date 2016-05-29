class Board

  attr_accessor :cards

  SIZE = 10

  def initialize
    @cards = [
      JailCard.new, 
      Card.new, 
      Card.new, 
      Card.new, 
      Card.new, 
      Card.new, 
      Card.new, 
      Card.new, 
      Card.new,
      FreeParkingCard.new
    ] 
  end

  def draw
    template = File.read("index.html.erb")
    renderer = ERB.new(template)
    File.open('index.html', 'w').write(renderer.result(self.get_binding))
  end

  def render_cards
    html = ''
    cards.each {|card| html << card.draw }
    html
  end

  def get_binding
    binding
  end

end
