## Animal is-a object look at the extra credit
class Animal
end

## ?? Dog is-a(n) Animal
class Dog < Animal

  def initialize(name)
    ## ?? Dog has-a name
    @name = name
  end
end

## ?? Cat is_a(n) Animal
class Cat < Animal

  def initialize(name)
    ## ?? Cat has-a name
    @name = name
  end
end

## ?? Person is-a ...
class Person

  def initialize(name)
    ## ?? Person has name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet

  def greeting
    puts "Hello, Vahan"
  end
end

## ?? Employee is-a Person
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic? employee takes his name from person
    super(name)
    ## ?? employee has-a salary
    @salary = salary
  end

end

## ?? Fish is-a ...
class Fish
end

## ?? Salmon is-a Fish
class Salmon < Fish
end

## ?? Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## ?? satan is-a Cat
satan = Cat.new("Satan")

## ?? mary is a Person
mary = Person.new("Mary")

mary.greeting
@pet = ['Fluffy', 'Cezar']
mary.pet = @pet
puts mary.pet

## ?? mary has-a cat named Satan
mary.pet = satan

## ?? frans is-a employee and has-a salary
frank = Employee.new("Frank", 120000)

## ?? frank has-a pet named rover
frank.pet = rover

## ?? flipper is-a Fish
flipper = Fish.new()

## ?? crouse is-a Salmon
crouse = Salmon.new()

## ?? haryy is-a Halibut
harry = Halibut.new()
