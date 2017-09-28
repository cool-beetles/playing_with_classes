class Vegetable < Plant

  attr_accessor :amount

  def initialize(color = "green", name, amount)
    super(color, name)
    @amount = amount
  end

  def healthy_food
    "Yummy!"
  end
end
