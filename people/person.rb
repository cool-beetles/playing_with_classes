class Person
  def initialize(name="Unknown", age, parent_permission)
    @id = Random.rand
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def name
    @name    
  end

  def name=(value)
    @name = value    
  end

  def age
    @age
  end

  def age=(value)
    @age = value
  end

  def parent_permission
    @parent_permission
  end

  def parent_permission=(value)
    @parent_permission = value
  end
  
  def id
    @id
  end

  def can_use_services?
    is_of_age? || @parent_permission    
  end

  private

  def is_of_age?
    age >= 18
  end
end
