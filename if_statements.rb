# Ruby Crash Course
# if_statements.rb
# Created by Mauro José Pappaterra on 06 April 2017.

############################################ IF STATEMENTS

if 1 < 2 # if true
  puts "Your code goes here" # this will be executed
end

if (0 > 1000) # parenthesis are optional
  puts "This will never be executed"
end

if (false) # else statement
  puts "This will be printed"
else
  puts "This will be printed instead"
end

score = 99
if score == 100 # A nested is statement works as a switch statement on Java
  puts "Perfect Score"
elsif score >= 80
  puts "Great"
elsif score >= 60
  puts "Good"
elsif score >= 40
  puts "Not too bad"
elsif score >= 20
  puts "Meh..."
else
  puts "You suck!"
end

############################################ UNLESS STATEMENTS

unless false # unless is the opposite of if
  puts "This will be printed" # your code goes here
end

unless true
  puts "This will never be printed" # this code will never be executed
end


light = "red" # a more illustrative example from the book

if !light == "red"
  puts "Go!"
end

# now we write the same using an unless statement instead

unless light == "red"
  puts "Go!"
end

# else and elsif statements can be used on an unless statement but it makes it hard to read

