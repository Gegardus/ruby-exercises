
# Ex11 =====================================================================

# print "How old are you? "

# age = gets.chomp 

# print "How tall are you? "

# height = gets.chomp

# print "How much do you weigh? "

# weight = gets.chomp

# puts "So you are #{age} old, #{height} tall and #{weight} heavy."


# Ex12 =====================================================================

# print "Give me a number: "
# number = gets.chomp.to_f

# bigger = number * 100
# puts "A bigger number is #{bigger}."

# print "Give me another number: "
# another = gets.chomp
# number = another.to_f
# puts number
# smaller = number / 100
# puts "A smaller number is #{smaller}"

# print "Give me a number: "
# number = gets.chomp.to_f * 0.1
# puts number

# Ex13 =====================================================================

# first, second, third = ARGV

# first = $stdin.gets.chomp
# second = $stdin.gets.chomp.to_f
# third = $stdin.gets.chomp.to_i

# puts "Your first variable is: #{first}"
# puts "Your second variable is: #{second}"
# puts "Your third variable is: #{third}"

# Ex14 =====================================================================

# user_name = ARGV.first # gets the first argument
# user_name, likes, lives, computer = ARGV
# prompt = '------>'

# puts "Hi #{user_name}."
# puts "I'd like to ask you some questions."
# puts "Do you like me #{user_name}?"
# puts prompt
# likes = $stdin.gets.chomp

# puts "Where do you live #{user_name}?"
# puts prompt
# lives = $stdin.gets.chomp


# <<< a comma for puts like using it twice
# puts "What kind of computer do you have? ", prompt
# computer = $stdin.gets.chomp

# puts """
# Alright, so you said #{likes} about liking me.
# You live in #{lives}. Not sure where that is.
# An you hav a #{computer} computer. Nice.
# """


