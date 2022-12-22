# i = 0
# numbers = []

# while i < 6
#   puts "At the top i is: #{i}"
#   numbers.push(i)

#   i += 1
#   puts "Numbers now: ", numbers
#   puts "At the bottom i is: #{i}"
# end

# puts "The numbers: "

# # remeber you can write this 2 other ways
# numbers.each { |num| puts num }

def fill_arr(i)  
  numbers = []

  while i < 6
    puts "At the top i is: #{i}"
    numbers.push(i)

    i += 1
    puts "Numbers now: ", numbers
    puts "At the bottom i is: #{i}"
  end

  puts "The numbers: "

# remeber you can write this 2 other ways
  numbers.each { |num| puts num }    
end

fill_arr(0)