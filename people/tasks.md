[#1 #2 #3]

Create class Person:

- instance vars: @id, @name, @age
- constructor with name and age as parameter (name should be optional [default "Unknown"])
- getters & setters for @name and @age
- getter for @id
- extra method is_of_age? (returns true/false)

----------------

[#4]

- make `is_of_age?` a private method
- add optional parameter and instance var in constructor called `parent_permission` (default true) with getter and setter
- add public method `can_use_services?`. Person can use services if is of age or if permission from parents exists.

----------------

[#5]

Create class Student:

- inherits from Person
- constructor extends parent's class constructor by adding instance var & param (`@classroom`/`classroom`)
- has special method `play_hooky` which returns "¯\\_(ツ)_/¯"

Create class Teacher:

- inherits from Person
- constructor extends parent's class constructor by adding instance var & param (`@specialization`/`specialization`)
<<<<<<< HEAD
- overrides parent's methods `can_use_services?` and always returns `true`
=======
- overrides parent's methos `can_use_services?` and always returns `true`

----------------

[#6]

Create class Corrector with method `correct_name`, which:

- makes sure that the first letter of the given word is a capital letter
- makes sure that name has max 10 chars (and makes it shorter and add `...` if needed)

Use and instance of Corrector class in Person class:
- in `validate_name` method, to correct person's name

----------------

[#7]

Change your own getters and setters to shortcuts:
- first only attr_reader and attr_writer
- then use attr_accessor where it makes sense

----------------

[#10]

Create relationship has_many-belongs_two between classroom and students:

- first create class Classroom with attr_accessor `label` initialized in constructor
- make first side of relationship: Classroom has many Students
- make second side of relationship: Student belongs_to Classroom
- make sure that assigning a student to classroom automaticaly adds classroom for that student
- make sure that adding a classrom to student automatically assigns student to classroom's students list

----------------

[#11]

Create has-many-through relationship:

- first create class Book with attr_accessor `title` and `author` initialized in constructor
- then create class Rental with attr_accessor `date` initialized in constructor

- make first side of  1 relationship: Book has many Rentals
- make second side of 1 relationship: Rental belongs_to Book
- make first side of  2 relationship: Person has many Rentals
- make second side of 2 relationship: Rental belongs_to Person
- make person and book required param in Rental constructor

----------------
>>>>>>> upstream/master
