# Ruby Crash Course
# strings.rb
# Created by Mauro José Pappaterra on 06 April 2017.

############################################ STRINGS

puts "A String" # prints a String on the console

example = "Hello World!"
example_2 = "this is a 'string'"
example_3 = 'this is also "a string" '

puts example
puts example_2
puts example_3

puts "\n"
############################################ ESCAPING SEQUENCES
quotations = "\"Hello I'm an escaping sequence\" \\ he said" # \", \' and \\ are a escaping sequences for " ' and \ respectively'
text_format = "Name: \t David Bowie \nDescription: \tMusician form outer space \nStatus: \tInmortal" # \t for tab and \n for new lines

puts quotations
puts text_format

puts "\n"
############################################ METHODS

"Hello".class # returns object class, in this case 'String'
"Hello".methods # shows all methods for String Objects

example += " Welcome to Ruby!" # concatenation

example
puts example + " This is a crash course on" + " Ruby" # + concatenation
puts example << " Hope you like it!" # << concatenation

puts "THIS IS IT " * 3 # concatenate same string x times
puts "#" * 12 + " twelve pounds "

5.times {print "ITS LIKE THAT "} # same results using the method x.times
5.times {puts "OR IS IT?"}

puts "reverse".reverse # reverse order of string
puts "hello world".upcase # string to upper case
puts "My name is " + "mauro ".capitalize + "j. ".capitalize+ "pappaterra".capitalize # Capitalizes only first letter on the String
puts "aBcDeF".swapcase # swaps lowercase for uppercase and uppercase for lowercase

print "hello world!" # prints works like puts but without adding a newline character \n at the end of the String

puts"\n"

############################################ EXPRESSION SUBSTITUTION
title = "The Stranger"
writer = "Albert Camus"
year = 1942 # integer

puts "The book #{title} was written by #{writer} in #{year}" # fill the blank #{....} for instant expression substitution

# this is sooo much better than:
puts "The book " + title + " was written by " + writer + " in " + year.to_s
# where the integer 'year' must be converted to String before concatenation