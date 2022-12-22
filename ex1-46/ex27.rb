# not (true || false) false
# not (true || true) false
# not (false || true) false
# not (false || false) true

# !(true && false) true
# !(true && true) false
# !(false && true) true
# !(false && false) true

puts !(true || false) # false
puts !true || !false # true
puts (true || false) # true
puts !(false || true) # false
puts !false || !true # true
puts (false || true) # true

# puts !(true && false) # true
# puts !true && !false # false
# puts (true && false) # false
# puts !(false && true) # true
# puts !false && !true # false
# puts (false && true) # false