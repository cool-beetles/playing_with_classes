require "./people/corrector.rb"

attr_accessor :name :age :parent_permission :id

class Person
  def initialize(name = "Unknown", age, parent_permission = true)
    @id = Random.rand
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age? || @parent_permission 
  end

  def validate_name
    corrector = Corrector.new
    @name = corrector.correct_name(@name)
  end

  private

  def is_of_age?
    age >= 18
  end
end
