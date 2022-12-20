ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in the list. Let' fix that."

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math make it sure that there is 10 items

while stuff.length != 10
  # Call pop on more_stuff  
  next_item = more_stuff.pop
  puts "Adding: #{next_item}"
  # Call push on stuff with argument next_item
  stuff.push(next_item)
  puts "There are #{stuff.length} items now."  
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")
