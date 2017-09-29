require "./people/corrector.rb"
class Person

  attr_reader :id :label :rentals
  attr_accessor :name :age :parent_permission

  def initialize(name = "Unknown", age, parent_permission = true)
    @id = Random.rand
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def label=(value)
    @label = value
    value.students.push(self) unless value.students.include?(self)
  end

  def add_visit(rental)
    @rentals << rental
    rental.person = self
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
