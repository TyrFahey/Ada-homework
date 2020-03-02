# Problem 1:
random_data = ["b", "a", 1, 3, 99, "c"]
puts random_data[4]
puts random_data[2] + 10
puts random_data[1] + random_data[0]
# The result of this block will be:
# 99
# 11
# ab
# The first puts simply prints an index to console, the second uses addtition on the two indexes called and prints the sum to console, and the third uses concantenation to print the two strings to console, i.e. 'ab'.

# Problem 2:
numeric_data = []
numeric_data << 2
numeric_data << 4
numeric_data << 6
numeric_data << 8
puts numeric_data.length
puts numeric_data[1]
# The result of this block will be:
# 4
# 4
# The first line is the length of the created array, the second line is the value at index 1, which is also 4.

# Problem 3
my_array = ["dog", 5, "cat", 2, "horse", 1]
puts my_array[6]
puts my_array.last
# The result of this block will be:
# 1
# There is nothing printed to console by the command 'puts my_array[6]' as there is nothing at that index, the array is 6 items so the final index is '5' as it starts at 0. The only command executed is 'puts my_array.last' which succesfully prints '1', the final index.

# Problem 4
numbers = Array.new(3)
puts numbers.length
puts numbers.first
# The result of this block will be:
# 1
# 3
# The length of the array is 1 index, so that is what is printed by 'puts numbers.length', and the first index is '3', s that is what is printed by 'puts numbers.first'. As the array is only 1 index long, the same effect could be achieved from writing 'puts numbers.last' as well.

# Problem 5
student_names = Array.new(24, "Student")
student_names << "Test"
student_names << "Grumpy Cat"
puts student_names[1]
puts student_names[25]
# The result of this block will be:
# Student
# Grumpy Cat
# The array was initialized with a length of 24, each index having the value of "Student", so when the index at '1' is called the result is "Student", as besides "Test" and "Grumpy Cat" which have been pushed in after creation the entire array consists of "Student". When the value at '25' is called you get the value which was pushed in second after creation, as the "Test" value is pushed in at index 24 (because the length is then 25).
