# Ruby Crash Course
# numeric_types.rb
# Created by Mauro José Pappaterra on 03 April 2017.

############################################ INTEGERS

uno = 1
dos = 2
tres = 3
cuatro = dos + dos # sum
cinco = 10 / 2 # division
seis = tres * 2 # multiplication
siete = 10 - tres # rest
ocho = 8
nueve = 3 ** 2 # exponent
diez = 45 % 35 # returns reminder

diez += 1 # sums + x
diez -= 1 # rests - x

puts (uno)
puts (dos)
puts (tres)
puts cuatro # parenthesis are optional
puts cinco
puts seis
puts siete
puts ocho
puts nueve
puts diez

############################################ FLOATING POINT

int = 10
float = 1.0 # define a variable as a float by including .

pi = 3.14816

puts float + 0.34
puts pi

puts int.to_f # converts integer to float (n = n.0)
puts float.to_i # converts float to integer (n.iii = n)
puts pi.to_i

puts float + int # returns float
puts int + int # returns integer
puts float + float # returns float

############################################ METHODS
number = 1

number.class  # returns object class, in this case 'integer'
number.methods # shows all methods for integer Objects

neg_number = -32 # a negative integer
puts neg_number

puts neg_number.abs # returns absolute value of a  given number
puts 100.abs
puts (-6969).abs

random = rand(100) # generates a positive random number between 0 and x - 1
puts random

puts neg_number.even? # returns true if number is even
puts 11.even?

puts neg_number.odd? # returns true if the number is odd
puts 12.odd?

# converting a integer or a float into a String
two = 2 # or 2.0
puts "My name is R" + 2.to_s + "D" + two.to_s# converts integer/float into String

# no need to convert using expression substitution #{...} -fill the blank-
puts "Well hello there R#{two}D#{2}!, my name is C#{2 + 1}PO"

# converting a String into an integer or a float

number_3 = "3"

number_5 = 2 + number_3.to_i # or number_3.to_f

puts "2 + 3 + 5 = #{number_5 + 5}" # using expression substitution again to convert back to String






