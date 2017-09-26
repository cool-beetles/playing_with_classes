class Student < Person
  def initialize (name="Unknown", age, parent_permission, classroom)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def classroom
    @classroom
  end

  def classroom=(value)
    @classroom = value
  end

  def play_hooky
    "¯\\_(ツ)_/¯"
  end
end
