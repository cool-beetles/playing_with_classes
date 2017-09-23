class Person
  def initialize(id, name="Unknown", age)
    @id = Random.rand
    @name = name
    @age = age
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
  
  def id
    @id
  end

  def is_of_age?
    age >= 18
  end
end

