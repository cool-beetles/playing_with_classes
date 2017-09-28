class Fruit < Plant

  attr_accessor :sweet_taste

  def initialize(color = "green", name, sweet_taste = true)
    super(color, name)
    @sweet_taste = sweet_taste
  end

  def check_taste
    true
  end
end
