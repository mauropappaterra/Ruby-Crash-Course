# Ruby Crash Course
# arrays.rb
# Created by Mauro José Pappaterra on 08 April 2017

############################################ CREATE ARRAY

first_spanish_words = ["culo", "teta", "caca","pis", "chota"]
price_list = [9.99,2.50,25.65,99.99,150.55]
first_ten = [1,4,5,1,2,0,3,7,6]

mixed = [1,'@',"different elements", true, 2.331416,"hey!"] # arrays can have different types of elements

matrix = [
    [1,1,3,4,5],
    [0,1,3,4,5], # an array of arrays
    [0,0,1,4,5],
    [0,0,0,1,5],
    [0,0,0,0,1]
]

p first_spanish_words
p price_list
p first_ten
p mixed
p matrix

############################################ RETRIEVE ELEMENTS

p first_spanish_words # p prints array on a [a,b,...,z] format
p price_list
puts first_ten # puts prints array on a 'a'/n 'b'/n 'z'/n format

puts first_spanish_words[0] # returns first element
puts first_spanish_words[1] # returns second element
puts first_spanish_words[2] # ...
puts first_spanish_words[3]
puts first_spanish_words[4]
puts first_spanish_words[5] # out of bounds, returns nothing

puts first_spanish_words[-1] # returns last element
puts first_spanish_words[-2] # returns second last element...
puts first_spanish_words[-3] #...

puts price_list.first # returns first element
puts price_list.last # returns last element


############################################ ADD ELEMENTS

first_ten[8] = 9 # adds '9' in position 8
first_ten.push(8) # adds '8' in last position
p first_ten

first_ten[12] = 13 # adds '13' in position 12. Skipped positions 10 and 11 are now 'nil' (null)
p first_ten

first_ten << 14 # adds '14' in last position
p first_ten


############################################ MODIFY ELEMENTS

first_ten[10] = 6 # overrides 'nil' in position 10 with '6'
first_ten[0] = 8 # overrides '0' in position 0 with '8'
p first_ten

############################################ DELETE ELEMENTS

p first_ten.pop # retrieves last element and then deletes it from the list
p first_ten

p first_ten.shift # retrieves first element and then deletes it from the list
p first_ten

first_ten.delete(nil) # deletes ALL instances of element (e)

p first_ten - [7] # this this returns the array without ANY instance of element [e] but is NOT PERMANENT
first_ten = first_ten - [13] # but this is how you can make it permanent

p first_ten

############################################  OTHER METHODS

p first_ten.length # returns length of the array
p first_ten.include?(4) # returns true if n is included in the array
p first_ten.find_index(4) # returns the index of element '4'

p first_ten.sort # sorts the array, NOT PERMANENT
p first_ten

first_ten.sort! # sorts the array, PERMANENTLY
p first_ten

abc = "abcdefghijklmnopqrstuvwxyz".chars # creates array out of a String
p abc

alphabet = "a-b-c-d-e-f-g-h-i-j-k-l-m-n-o-p-q-r-s-t-u-v-w-x-y-z".split("-") # same but with a pattern
p alphabet

p alphabet.reverse # reverses the array, NOT PERMANENT
alphabet.reverse! # add ! to modify the array PERMANENTLY
p alphabet

say_it = first_spanish_words.join # creates a String out of an array
p say_it

say_what = first_spanish_words.join("-") # same with a pattern (separator)
p say_what