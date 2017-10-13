# Ruby Crash Course
# hashes.rb
# Created by Mauro José Pappaterra on 08 April 2017

############################################ CREATE A HASH

elements = {"H" => "Hydrogen","Li" => "Lithium", "Fe" => "Iron", "O" => "Oxygen"}

area_codes = {"United States" => "+1","Argentina" => "+54", "Sweden" => "+46", "Germany" => "+49"}

contacts = { # another way to indent a hash
 "Monica" => "123675849",
 "Erica" => "463899929",
 "Rita" => "26444608",
 "Tina" => "2652524108", # key => value pairs
 "Sandra" => "26326608",
 "Mary" => "297342108",
 "Jessica" => "26040358",
}

users = {
    "0001" => {"username" => "papi_chulo1994",
               "password" => "babytienerazon",
               "full name" => "Bobby Gomez"},

    "0002" => {"username" => "sandersBern500ac",
               "password" => "matusalenIsMyFirstCousin", # A hash of hashes
               "full name" => "Bernie Sanders"},

    "0003" => {"username" => "whiteHousebjs",
               "password" => "fugufish47",
               "full name" => "Monica Lewinsky"},

    "0004" => {"username" => "russia4Life43",
               "password" => "donaldTrumperino",
               "full name" => "Vladimir Putin"},
}

mixed = { 3 => "hello world!",true => 3.14, '!' => "ostrich", :symbol => "banana"} # keys and values of every kind

p elements
p contacts
p users
p area_codes
p mixed

############################################ RETRIEVE ELEMENTS

p elements["Fe"] # retrieves value of key "Fe" => "Iron"
p elements["H"]
p elements["Li"]
p elements["O"]

p contacts["Monica"]

p users["0001"] # retrieves entire hash saved on key "0001"

p users["0002"]["password"] # returns value saved on "password" inside hash saved on "0002"
p users["0003"]["username"]
p users["0004"]["full name"]