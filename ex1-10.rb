# Ex1 =====================================================================

# puts "Hello world."
# puts "Hello again."
# puts "I like typing this."
# puts "This is fun."
# puts "Yay! Printiing!"
# puts "I'd much rather you 'not'."
# puts 'I "said" do not touch this.'

#Ex2 =====================================================================

# A comment, this is, so you can read this later
# Everything after # will be ignored by ruby

# >>> puts "I could have code # like this" # And commnet after it is ignored

# You can also use comment to disable your code

# puts "This will not run"

# >>> puts "This will run"

# Ex 3 =====================================================================

# puts "I will now count my checkens:"

# puts "Hens #{25.0 + 30.0 / 6.0}"
# puts "Roosters #{100.0 - 25.0 * 3.0 % 4.0}"

# puts "Now I wil count the eggs:"

# puts 3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2.0 - 1.0 / 4.0 + 6.0

# puts "Is it true that 3 + 2 < 5 - 7?"

# puts 3.0 + 2.0 < 5.0 - 7.0

# puts "What is 3 + 2? #{3.0 + 2.0}"
# puts "What is 5 - 7? #{5.0 - 7.0}"

# puts "Oh, that's why it's false."

# puts "How about some more."

# puts "Is it greater? #{5.0 > -2.0}"
# puts "Is it greater or equal? #{5.0 >= -2.0}"
# puts "Is it less or equal? #{5.0 <= -2.0}"

# Ex4 =====================================================================

# cars = 100
# space_in_a_car = 4.0
# drivers = 30
# passengers = 90
# cars_not_driven = cars - drivers
# cars_driven = drivers 
# carpool_capacity = cars_driven * space_in_a_car
# average_passengers_per_car = passengers / cars_driven

# puts "There are #{cars} cars available."
# puts "There are only #{drivers} available."
# puts "There will be #{cars_not_driven} empty cars today."
# puts "We can transport #{carpool_capacity} people today."
# puts "We have #{passengers} to carpool today."
# puts "We need to put about #{average_passengers_per_car} in each car."

# Ex5 =====================================================================

# <<< List of variables
# name = 'Zed A. Shaw'
# age = 35 
# height = 74 # inches
# weight = 180 # lbs
# eyes = 'Blue'
# teeth = 'White'
# hair = 'Brown'

# <<< Executable code
# puts "Lets talk about #{name}."
# puts "He is #{height * 2.54} santimeters tall."
# puts "He is #{weight / 2.20462262} kilograms heavy."
# puts "Actually that not too heavy."
# puts "He's got #{eyes} eyes and #{hair} hair."
# puts "He's teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
# puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."

# Ex6 =====================================================================

# types_of_people = 10
# x = "There are #{types_of_people} types of people."
# binary = "binary"
# do_not = "don't"
# y = "Those who know #{binary} and those who #{do_not}."

# puts x
# puts y

# <<< This code contains inserted strings
# puts "I said: #{x}."
# puts "I also said: '#{y}'."

# hilarious = false
# joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# puts joke_evaluation

# w = "This is a left side of..."
# e = "a string with a right side."

# <<< This code concatenates strings
# puts w + e

# Ex7 =====================================================================

# puts "Mary had a little lamb."
# puts "Its fleece was white as #{'snow'
# puts "And everywhere that Mary went."
# puts "." * 10

# <<< List of variables that should construct a word
# end1 = "C"
# end2 = "h"
# end3 = "e"
# end4 = "e"
# end5 = "s"
# end6 = "e"
# end7 = "B"
# end8 = "u"
# end9 = "r"
# end10 = "g"
# end11 = "e"
# end12 = "r"

# print end1 + end2 + end3 + end4 + end5 + end6
# puts end7 + end8 + end9 + end10 + end11 + end12

# Ex8 =====================================================================

# <<< Establish formatter
# formatter = "%{first} %{second} %{third} %{fourth}"

# puts formatter

# puts formatter %{first: 1, second: 2, third: 3, fourth: 4}
# puts formatter %{first: "one", second: "two", third: "three", fourth: "four"}
# puts formatter %{first: true, second: false, third: true, fourth: false}
# puts formatter %{first: formatter, second: formatter, third: formatter, fourth: formatter}

# puts formatter %{
#     first: "I had this thing.", 
#     second: "That you could type up right.", 
#     third: "But it didn't sing.", 
#     fourth: "So I said goodnight."
# }

# Ex9 =====================================================================

#  days = "Mon Tue Wed Thu Fri Sat Sun"
# months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# puts "Here are the days: #{days}"
# puts "Here are the months: #{months}"

# <<< Format strings on different lines
# puts %q{
#     There's something going on here.
#     With this weird quote
#     We'll be able to type as much as we like.
#     Even 4 lines, if we want, or 5, or 6.
# }

# Ex10 =====================================================================

# tabby_cat = "\tI'm tabbed in."
# persian_cat = "I'm split\non a line."
# backslash_cat = "I'm \\ a \\  cat."

# <<< Maintains separate lines
# fat_cat = """
# I'll do a list:
# \t* Cat food
# \t* Fishies
# \t* Catnip\n\t* Grass
# """

# puts tabby_cat
# puts persian_cat
# puts backslash_cat
# puts fat_cat

