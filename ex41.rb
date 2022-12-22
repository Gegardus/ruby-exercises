def puts_numbers(*nums)
    num1, num2, num3 = nums
    puts "num1: #{num1}, num2: #{num2}, num3: #{nums}"
end

# puts_numbers('one', 'two', 'three')

def print_data_from_hash(name: "Rose", age: 1)
    [name, age]
end

hash = { name: 'Alex', age: 3 }

puts print_data_from_hash(**hash)