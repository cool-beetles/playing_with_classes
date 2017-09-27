require "./people/person.rb"

attr_accessor :classroom

class Student < Person
  def initialize (name="Unknown", age, parent_permission="YES", classroom)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\\_(ツ)_/¯"
  end
end
