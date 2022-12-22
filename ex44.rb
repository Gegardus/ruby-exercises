# === Inheritance ===

# class Parent
#   def override()
#     puts "PARENT override()"
#   end

#   def implicit()
#     puts "PARENT implicit()"
#   end

#   def altered()
#     puts "PARENT altered()"
#   end
# end

# class Child < Parent
#   def initialize(stuff)
#     @stuff = stuff
#     super() # dad = Parent.new()
#   end
    
#   attr_reader :stuff

#   # this function overrides of the same name parent class function  
#   def override()
#     puts "CHILD override()"
#   end

#   def altered()
#     # this line overrides of the same name parent class function  
#     puts "CHILD, BEFORE PARENT altered()"
#     # this line callsof the same name parent class function
#     super()
#     # this line overrides of the same name parent class function  
#     puts "CHILD, AFTER PARENT altered()"
#   end
# end

# dad = Parent.new()
# son = Child.new('V')

# dad.implicit()
# son.implicit()

# dad.override()
# son.override()

# dad.altered()
# son.altered()

# puts son.stuff

# === Composition with class ===

# class Other
#   def implicit()
#     puts "OTHER implicit()"
#   end

#   def override()
#     puts "OTHER override()"
#   end

#   def altered()
#     puts "OTHER altered()"
#   end
# end

# class Child
#   def initialize()
#     @other = Other.new()
#   end

#   def implicit()
#     @other.implicit()
#   end

#   def override()
#     puts "CHILD override()"
#   end

#   def altered()
#     puts "CHILD, BEFORE OTHER altered()"
#     @other.altered()
#     puts "CHILD, AFTER OTHER altered()"    
#   end
# end

# son = Child.new()

# son.implicit()
# son.override()
# son.altered()

# === Composition with module ===

# module Other

#   def override()
#     puts "OTHER override()"
#   end

#   def implicit()
#     puts "OTHER implicit()"
#   end

#   def Other.altered()
#     puts "OTHER altered()"
#   end
# end

# class Child
#   include Other

#   def override()
#     puts "CHILD override()"
#   end

#   def altered()
#     puts "CHILD, BEFORE OTHER altered()"
#     Other.altered()
#     puts "CHILD, AFTER OTHER altered()"
#   end
# end

# son = Child.new()

# son.implicit()
# son.override()
# son.altered()

# === Super in initialize ===

# First example
# Super class or parent class
class GeeksforGeeks 
  # constructor of super class
  def initialize       
      puts "This is Superclass"
  end
   
  # method of the superclass
  def super_method       
      puts "Method of superclass"
  end
end

# subclass or derived class
class Sudo_Placement < GeeksforGeeks
  # constructor of deriver class
  def initialize
     puts "This is Subclass"
  end
end

# creating object of superclass
# GeeksforGeeks.new # calls super class constructor method

# creating object of subclass
# sub_obj = Sudo_Placement.new # calls subclass constructor method

# calling the method of super
# class using sub class object

# sub_obj.super_method

# Second example

=begin
How to initialize base class variables with derived class object
=end

class Base
	def initialize(a, b)
		@var1 = a
		@var2 = b
		puts "Value of a and b is #{@var1} and #{@var2} in base class" 
    puts "Test, when super class don't have parameters"
	end
end

class Derived < Base
	def initialize(a, b)
		super(a, b) #implementation of super
    super # same as above, implicitly passes an argument from the Child method to the Parent method.   
    super() # tells super class constructor, when it don't have parameters, to ignore sub class arguments
		@var3 = a
		@var4 = b
	end

	def print1
		puts "Value of a and b is #{@var3} and #{@var4}"
	end
end

# obj = Base.new(30, 60)
# ob1 = Derived.new(10, 20)
# ob1.print1

# Third example

class Person    
  def initialize(name)
      @name = name
      puts "In Parent class constructor name is: #{name}"
  end    

end

class Employee < Person
  def initialize(name, salary)
      super(name)
      @salary = salary
  end

  attr_reader :salary
  attr_reader :name
end

emp = Employee.new("Chuck", 100)

puts emp.name, emp.salary

# class Employee < Person
# end

# "Chuck" will arrive at the initialize method of Person without any explicit code from us.
# emp = Employee.new("Chuck")