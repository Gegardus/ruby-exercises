filename = ARGV.first

puts "We are going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you don't want that, hit RETURN."

$stdin.gets.chomp

puts "Opening the file..."
target = open(filename, 'w')

puts "Trancating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

# Use strings, formats, and escapes to print out line1, line2, and line3 with just one target.write() command instead of six.

line = line1 + "\n" + line2 + "\n" + line3 + "\n"

puts "I'm going to write this to a file."

# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")

target.write(line)

puts "And finally, we close it."
target.close