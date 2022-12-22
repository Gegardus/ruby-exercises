the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'penniies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# im a more traditional style found in other languages
for number in the_count
  puts "This is #{number}"  
end

# same as above but in more Ruby style
fruits.each do |fruit| 
  puts "A fruit of types: #{fruit}"  
end

# like above but with different syntax
fruits.each {|i| puts "I got #{i}"}

# build list starting with an empty one
elements = []

# then use range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "Adding #{i} to the list."
  # pushes in the end of the list
  elements.push(i)  
end

# print out elements of the list
elements.each {|i| puts "Element was: #{i}"}