
# Problem 1
cars = ["old", "new", "used"]
cars.each do |car|
  puts car
end

# The result of this will be a simple iteration through the array, for each index it will 'do' a 'puts' of the string. i.e.:
# old
# new
# used

# Problem 2
fruits = ["banana", "apple", "kiwi"]
fruits.each do |fruit|
  puts "I love " + fruit + "!"
end

# Following the same principle, this loop iterates through its index, this time using string concantenation to 'puts' a strign to console for each rather than just repeating the arrayed strign itself. i.e.:
# I love banana!
# I love apple!
# I love kiwi!
# Personally I would've put a "s!" instead of just a "!" because it makes more grammatical sense to me.

# Problem 3
values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  puts value
end

# The same execution as problem 1, this loop just iterates through the values in its array. i.e:
# 8
# 5
# 3
# 10
# 14
# 2

# Problem 4
total = 0
values = [4, 6, 2, 8, 11]

values.each do |value|
    total = total + value
end

puts total

# An effective way to sum here, this loop iterates through adding teh values of its array to a total, can be broken down into 0 + 4, 4 + 6, 10 + 2, 12 + 8, 20 + 11 etc.
# 31 <= the total finally put to console.

# Problem 5
values = [8, 5, 3, 10, 14, 2]
values.each do |value|
  if value == 10
    puts "Special case!"
  else
    puts "Regular values like #{value}"
  end
end

# This loop iterates through its array, putting "Regular values like #{x}" for each until it hits its condition and puts "Special case!" to console for the 10 value. Like so!

# Regular values like 8
# Regular values like 5
# Regular values like 3
# Special case!
# Regular values like 14
# Regular values like 2
