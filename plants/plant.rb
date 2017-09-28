class Plant

  attr_reader :vitamins_content
  attr_accessor :color :name
  
  def initialize(color = "green", name)
    @color = color
    @name = name
    @vitamins_content = Random.rand(1..100)
  end

  def make_a_salat?
    healthy_food && color != "green"
  end

  def edit_name
    change = Change.new
    @name = change.change_name(@name)    
  end

  private

  def healthy_food
    vitamins_content > 50
  end
end
