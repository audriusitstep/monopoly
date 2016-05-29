class Board

  SIZE = 10

  def draw
    template = File.read("index.html.erb")
    renderer = ERB.new(template)
    File.open('index.html', 'w').write(renderer.result(self.get_binding))
  end

  def render_card
    card = Card.new
    card.draw
  end

  def get_binding
    binding
  end

end
