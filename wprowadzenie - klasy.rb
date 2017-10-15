=begin
1. Po co klasy?
 - porzadek
 - kilka zasad w programowaniu: najważniejsza - single responsibility (metody atomowo)

2. Klasa - obiekt: o co chodzi?



3. Jak się tworzy klasy? Jak się tworzy obiekty?

class Animal
  def initialize
  end
end

animal_1 = Animal.new
animal_2 = Animal.new

# CONSTRUCTOR
# Ruby shortcuts (just mention)


4. Co ma każda klasa?


4a atrybuty

class Animal  
  def initialize
    @number_of_legs = 4
    @name = "Fafik"
    @id_number = Random.rand
  end
end

animal_1 = Animal.new
animal_2 = Animal.new


---------

Wait.... może jakby trochę rózne te zwierzaki?

CONSTRUKTOR - metoda specjalna, ale METODA, a co ma metoda? Paramsy!

class Animal  
  def initialize(number_of_legs, name)
    @number_of_legs = number_of_legs
    @name = name
    @id_number = Random.rand
  end
end

animal_1 = Animal.new
animal_2 = Animal.new

# Optional params

class Animal  
  def initialize(number_of_legs = 4, name = "Unknown")
    @number_of_legs = number_of_legs
    @name = name
    @id_number = Random.rand
  end
end

No dobra ale może bym jednak chciała coś z tymi atrybutami zrobić, co nie?

4b Metody

Np pokazac imię:

class Animal  
  def initialize(number_of_legs = 4, name = "Unknown")
    @number_of_legs = number_of_legs
    @name = name
    @id_number = Random.rand
  end

  def show_name
    return @name
  end
end

Albo powiedzieć coś:


class Animal  
  def initialize(number_of_legs = 4, name = "Unknown")
    @number_of_legs = number_of_legs
    @name = name
    @id_number = Random.rand
  end

  def show_name
    return @name
  end

  def speak
    "Bla bla bla"
  end
end

Nie ma sensu. Może zmienimy imię?

class Animal  
  def initialize(number_of_legs = 4, name = "Unknown")
    @number_of_legs = number_of_legs
    @name = name
    @id_number = Random.rand
  end

  def show_name
    return @name
  end

  def change_name(new_name)
    @name = new_name
    return @name
  end
end



5. Jak się bawimy z atrybutami? 

Nie bezpośrednio.
animal_1.@name

Getter and settters 🙂


class Animal  
  def initialize(number_of_legs = 4, name = "Unknown")
    @number_of_legs = number_of_legs
    @name = name
    @id_number = Random.rand
  end

  def get_name
    return @name
  end

  def set_name(new_name)
    @name = new_name
    return @name
  end
end

Specjalny zapis w Ruby

class Animal  
  def initialize(number_of_legs = 4, name = "Unknown")
    @number_of_legs = number_of_legs
    @name = name
    @id_number = Random.rand
  end

  def name
    return @name
  end

  def name=(value)
    @name = value
    return @name
  end
end

# jeszzce większe skróty ale to dopiero jak w Tic Tac Toe to zastosujesz 🙂



Pierwszy principle obiektowości 🙂 Enkapsulacja 🙂


6. Kolejne principles jutro: inheritance i abstraction


ZADANIE:

Stworzyć klasę:

1. Posciwczyc na obiekcie użycie geterów i seterów:)

a = Animal.new
a.name
a.name = "Rex"
a.name

2. Pozbyć się return bo ostatnia linijka w metodzie Ruby jest zwracana jako wynik metody


3. Zdefiniuj swoją klasę
Person
Atrybuty: first_name, last_name, age
Konstruktor z last_name jako opcjonalne(domyślnie "Unknown")
Setters&Getters
Extra methods: is_of_age? (czy jest pełnoletni)
=end

class Animal
  def initialize(number_of_legs, name="noname")
    @number_of_legs = number_of_legs
    @name = name
    @id = Random.rand
  end

  def name #a.name wyświetli
    @name
  end

  def name=(value) #a.name=(value) zapisze!
    @name = value
  end

  def number_of_legs
    @number_of_legs
  end

  def number_of_legs=(value)
    @number_of_legs = value
  end

  def speak
    "bla bla"
  end
end
