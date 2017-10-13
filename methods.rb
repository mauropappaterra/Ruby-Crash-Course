# Ruby Crash Course
# methods.rb
# Created by Mauro José Pappaterra on 06 April 2017.

############################################ METHODS

def method_name (arg1, arg2) # method name followed by arguments
  puts arg1 + arg2 # your code goes here
end

def concatenate a,b # parenthesis are optional
  puts a + b
end

def say_my_name ()# a method without any arguments, no need for ()
  puts "say my name "*3
end

def power_2 (int)
  return int * int # return value (explicit)
end

def power_3 (int)
  int * int * int # "return" is optional (implicit)
end

concatenate("This is a ", "method execution")
say_my_name()
say_my_name # no need for ()
puts "5 to the power of 2 equals #{power_2(5)}, and to the power of 3 equals #{power_3(5)}!"


def area (width = 100, height = 50) # this method includes default parameters that can be overrided
  width * height
end

puts "The area of a 100 * 50 square is equal to #{area()} m2!"
puts "The area of a 200 * 100 square is equal to #{area(200,100)} m2!"

def order (food, quantity = 1, drink = "")# we can make a parameter optional using "" as default, should always be last

  if quantity > 1
    plural = "s"
  else
    plural = ""
  end

  unless (drink == "")
    drink = "and a " + drink
  end

  puts "You have orderded #{quantity} #{food}#{plural} #{drink}"
end

order("pizza") # uses default 'quantity' 1 and no 'drink' parameter
order("hotdog",3,"pepsi") # overrides quantity to 3
order("hamburguer",5,) # ignores optional parameter 'drink'
order("rib",2,"beer")
#...
