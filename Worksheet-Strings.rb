# problem 1
my_string = "I love Seattle"
my_string.slice(7)
# My_string is assigned "I love Seattle"
# my_string.slice(7) does not print anything, but it is slicing out index 7 of the string, which is "S"

# problem 2
my_string = "I love Seattle"
my_string.slice(2, 4)
# My_string is assigned "I love Seattle"
# my_string.slice(2, 4) does not print anything, but it is slicing out index 2-4+ of the string, which is "love"

# problem 3
my_string = "I love Seattle"
my_string.slice("Seattle")
# My_string is assigned "I love Seattle"
# my_string.slice("Seattle") does not print anything, but it is slicing out the portion of the string that matches "Seattle"

# problem 4
my_string = "Ada"
my_string += " Lovelace"
# my_string is assigned "Ada" and then " Lovelace" is appended to it, so it's final value is "Ada Lovelace"

# problem 5
my_string = "Ada"
my_string << " codes" << " it!"
# my_string is initialized with the string "Ada" and then " codes" and " it!" are pushed into it, so its final value is "Ada codes it!"

# problem 6
my_string = "Ada"
my_string.concat(" likes to code").slice(4...9)
# my_string is initialized with the string "Ada" and then .concat appends " likes to code" to that value and finally .slice(4...9) slices out the elements at index 4-8 of the string as ... means it is non-inclusive of the final number. If the final line of code were put to console it would be printing "likes".

# problem 7
my_string = "Hello world"
"Goodbye " + my_string.slice(6, 5) << "!"
# Clever, the value for my_string is "Hello world" but the statement below that only uses the 5 elements starting at index 6 with "Goodbye " and "!" concatenated with it, to make the string "Goodbye world!"

# problem 8
my_string = "Hello world!"
my_string.slice(0...5).concat(", goodbye!")
# my_string is called starting at index 0 through index 5 (non-inclusive) which is then concatenated with the string ", goodbye!".
# If printed this statement would show as "Hello, goodbye!"

# problem 9
my_string = "Hello world!"
my_string.slice(0) << "i" + "!"
# The .slice(0) method takes the first index of my_string and concantenates with "i" and "!" to make "Hi!" if printed to console.

# problem 10
my_string = "I love Ruby"
my_string.slice(7, 4).concat(my_string.slice(2..5)) + my_string.slice(0)
# With a series of .concat and .slices, the value of my_string is rearranged into "RubyloveI".

# problem 11
my_string = "I love Ruby"
my_string.slice(7, 4).concat(my_string.slice(2...6)) + my_string.slice(0)
# The same thing is done here as above in problem 10, just using a non-inclusive range in the .slice argument nested within the .concat call. 2...6 is effectively the same as the inclusive 2..5

# problem 12
my_string = "I love Ruby"
"R".concat(my_string.slice(8, 3) + " rocks!")
# This would print "Ruby rocks!", though it concatenates only "uby" (the 3 characters starting at index 8) instead of pulling the full "Ruby" from my_string. Then it concatenates together with an unneccesary "R" and the string " rocks!"

# problem 13
my_string = "I love Ruby"
my_string.slice(2, 4) << my_string.slice(7...11).concat(my_string.slice(2...6))
# The same indexes are called twice, first by a .slice call for 4 characters starting at index 2 and then by a .slice call for the characters starting at index 2 non-inclusively to index 6 nested within the arguments of .concat. The middle .slice is calling the characters "Ruby" so the final string if it were put to console would print as "loveRubylove".
