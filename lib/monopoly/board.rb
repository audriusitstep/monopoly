class Board

  def draw
    template = File.read("index.html.erb")
    renderer = ERB.new(template)
    File.open('index.html', 'w').write(renderer.result)
  end

end
