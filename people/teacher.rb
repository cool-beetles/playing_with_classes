class Teacher < Person
  def initialize (name="Unknown", age, parent_permission, specialization)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def specialization
    @specialization    
  end

  def specialization=(value)
    @specialization = value
  end

  def can_use_services?
    is_of_age?
  end
end
