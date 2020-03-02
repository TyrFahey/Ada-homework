# Standard greeting here.
puts "Let us play another numbers game!"

# I used Array.new as I was creating it empty.
user_array = Array.new

# The user input is assigned to userin, which I will use to add to the empty array I created above.
puts "How many numbers would you like to enter?"
userin = gets.chomp().to_i

# 'i' defines the iterator here, I set it in the begining of the code block so that the string printed after displays to the user in a way that is more readable to them, starting at '1' and going from there. user_int is assigned each stdin in turn and then pushed into the user_array I created earlier using <<
i = 0
until i == userin
 i += 1
 print "Please enter positive integer number #{i} > "
 user_int = gets.chomp().to_i
 user_array << user_int
end

# 'u' defines the iterator here, and I iterate over the user_array with a conditional to determine greater, lesser or equals.
u = 0
user_array.each do |x|
    if x < user_array.last
        puts "The value at index #{u}, #{x} is less than the value at the last index, #{user_array.last}."
    elsif x > user_array.last
        puts "The value at index #{u}, #{x} is greater than the value at the last index, #{user_array.last}."
    else
        puts "The value at index #{u}, #{x} is equal to the value at the last index, #{user_array.last}."
    end
    u += 1
end

# A straightforward series of array methods, in the inject method I use :+ to use the action it represents (addition) on each index in the array, and then divide it to get the average. This is the only time I use a float, to better represent the average. I prefer string interpolation over concantenation for this.
    min = user_array.min
    max = user_array.max
    avg = user_array.inject(:+).to_f / user_array.size
    puts "The minimum value in the array is #{min}."
    puts "The maximum value in the array is #{max}."
    puts "The average of this array is #{avg}."
