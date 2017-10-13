# Ruby Crash Course
# classes.rb
# Created by Mauro José Pappaterra on 07 April 2017.

############################################ CLASSES

class Animal # class names begin with a Capital letter

  def initialize(name, age)
    # classes instance variables/attributes/fields go below
    @name = name
    @age = age # the @ is important to define an object variable as such
  end

  def name=new_name # setters method uses =
    @name = new_name
  end

  def name #getter
    @name # returns @ instance
  end

  def age=new_age
    @age = new_age
  end

  def age
    @age
  end

  def print_info # all class methods are written below
    puts "#{@name} is #{@age} years old" # attributes (fields) are called using expression substitution
  end

  def moves (destination)
    puts "#{@name} runs towards the #{destination}."
  end

end

dog = Animal.new('Bobby',4)
dog.print_info
dog.moves("garden")

dog.name = "Golfo" # arguments are sent for setter's methods using =
dog.age = 2

dog.print_info
dog.moves("food bowl") # arguments for other methods use conventional way ()

bird = Animal.new("Polly",1)
bird.print_info
bird.moves("tree")

class Book
  attr_writer :title # creates only setter and instance @title
  attr_reader :author # creates only getter and instance @author
  attr_accessor :year # creates both getter and setter and instance @year

  # :name defines a symbol in ruby

  def initialize (title = "", author = "", year = "") # constructor method, notice default values!
  @title = title
  @author = author
  @year = year
  end

  def title # @title getter must be defined manually
    @title
  end

  def author=new_author # @author setter must be defined manually
    @author = new_author
  end

  # both getter and setter for @ have been defined on line 58
  # use this wisely, this shortcute is not useful when encapsulation is needed

  def print_info
    puts "'#{@title}' was written by #{@author} in the year #{@year}."
  end
end

book_1 = Book.new
book_1.title = "A Hundred Years of Solitude"
book_1.author = "Gabriel Garcia Marquez"
book_1.year = 1967

book_2 = Book.new("Dracula","Bram Stoker", 1897) # initialize method let us do this

book_3 = Book.new("L'Etranger", "Alber Camos",1942)
book_3.title = "The Stranger"
book_3.author = "Albert Camus"

book_1.print_info
book_2.print_info
book_3.print_info

############################################ INHERITANCE

class Vehicle # a superclass is no different from a regular class
  attr_accessor :type, :model, :make, :year, :capacity

  def initialize (type="",model="",make="",year="",capacity=1)
    @type = type
    @model = model
    @make = make
    @year = year
    @capacity = capacity
  end

  def start
    puts "#{@make} #{@model} starting the engine..."
  end

  def speed_up
    puts "#{@make} #{@model} stepping on gas pedal"
  end

  def steer (direction)
    puts "#{@make} #{@model} steering the wheel to the #{direction}"
  end

  def break
    puts "#{@make} #{@model} stepping on brake pedal"
  end

  def print_info

    plural = "people"

    if capacity == 1
    plural = "person"
    end

    puts "\nThis #{@type} is a #{@model} made by #{@make}. It first appeared on #{@year} and has capacity for #{@capacity} #{plural}"

  end

end

class Car < Vehicle # a subclass inherits from a superclass (child < parent)

  def initialize (model="",make="",year="",capacity=2) # overrides existing method in superclass
    @type = "car"
    @model = model
    @make = make # assign values directly to object variables, ok but not recommended!
    @year = year
    @capacity = capacity
  end

end

class Bus < Vehicle

  def initialize (model="",make="",year="",capacity=15) # overrides existing method in superclass
    self.type = "bus"
    self.model = model
    self.make = make # calling the setters inside the class to itself
    self.year = year # better option when encapsulation is necessary!
    self.capacity = capacity
  end

end

class Lorry < Vehicle

  def initialize (model="",make="",year="",capacity=2) # overrides existing method in superclass

    super("lorry", model, make, year, capacity) # super sends to initialize in superclass with giver parameters,  again little encapsulation here!
  end

end

class Bicycle < Vehicle

  def initialize (model="",make="",year="") # notice the reduction of parameters for the constructor of the subclass Bicycles
    @type = "bicycle"
    @model = model
    @make = make
    @year = year
    @capacity = 1 # this is the only capacity possible for bicycles
  end

  def start # overrides existing method in superclass
    puts "#{@make} #{@model} starting to pedal..."
  end

  def speed_up # overrides existing method in superclass
    puts "#{@make} #{@model} pedalling full tilt"
  end

  def steer (direction) # overrides existing method in superclass
    puts "#{@make} #{@model} steering the bicycle to the #{direction}"
  end

  def break # overrides existing method in superclass
    puts "#{@make} #{@model} pressing the breaks"
  end

  def print_info # overrides existing method in superclass BUT
    super # super does exactly as the original method
    puts "Bicycles are also a much more ecological vehicle!" # but new code is added here!
  end

end



car_01 = Car.new
car_01.model = "Corolla"
car_01.make = "Toyota"
car_01.year = 2010
car_01.capacity = 5

car_02 = Car.new("Gallardo","Lamborghini",2014,4)
car_03 = Car.new("600","Fiat",1984,3)

car_01.print_info
car_01.speed_up
car_01.steer("rigth")
car_01.break

car_02.print_info
car_02.speed_up
car_02.steer("left")
car_02.break

car_03.print_info
car_03.speed_up
car_03.steer("left")
car_03.break

bicycle_01 = Bicycle.new("V256", "Mountain Bike", 2007)
bicycle_02 = Bicycle.new("xTreme 2004", "Volt", 2004)
bicycle_03 = Bicycle.new("xxx", "Adventurer", 2016)

bicycle_01.print_info
bicycle_01.speed_up
bicycle_01.steer("left")
bicycle_01.break

bicycle_01.print_info
bicycle_02.speed_up
bicycle_02.steer("left")
bicycle_02.break

bicycle_01.print_info
bicycle_03.speed_up
bicycle_03.steer("left")
bicycle_03.break

bus_01 = Bus.new("Schoolie","Mercedes Benz", 2000, 25)
lorry_01 = Lorry.new("FX3500", "Scania", 2015)

bus_01.print_info
lorry_01.print_info