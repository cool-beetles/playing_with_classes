require "./people/person.rb"

attr_reader :specialization
attr_writer :specialization

class Teacher < Person
  def initialize (name="Unknown", age, parent_permission="YES", specialization)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    is_of_age? = true
  end
end
