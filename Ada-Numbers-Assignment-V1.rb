# Somehow I can't find the file I originally made of this assignment, so this is being re-done a couple lessons ahead. This is the assignment done with what comes to mind after finishing Lesson 12:

# A simple 3.times loop, could be modified to a loop based on a user defined variable pretty easily.

3.times do
    puts "Hello! Please enter a positive integer. > "
    usrin = gets.chomp.to_i
    # The stdin is converted to_i and assigned to it's variable.
    int_list = []
    # The array to hold the user input.
    # And a conditional to decide wether the user input is worth pushing into the empty array. If it is negative the user is asked for appropiate input.
    if usrin <= 0
        puts "Enter an integer above 0 please. > "
    else
        int_list << usrin
    end
end

# With the array full of the un-modified numbers needed, I use string interpolation to display all the indexes of the array + 20.

puts "Twenty added to the numbers you entered gives us #{int_list[0] + 20}, #{int_list[1] + 20}, and #{int_list[2] + 20}."

-----

# If the loop was of variable size decided by the user, I would've used a loop to push the neccesary interpolated variable into one continious string asssigned to a variable and then displayed that string to console, like so:

sentence = "Twenty added to the numbers you entered gives us -"
# First I assign the first half of the sentence I will be later modifying.

print "How many integers would you like to add today? > "
usr_count = gets.chomp.to_i
# Then I ask for stdin to help define my loop.

if usr_count <= 0
    print "You can't add no numbers! Please enter how many numbers you would like to add today. > "
    usr_count = gets.chomp.to_i
end
# If the user input is actually a positive number I assign it to a variable.

usr_count.times do
    print "Hello! Please enter a positive integer. > "
    usrin = gets.chomp.to_i
    if usrin <= 0
        print "Enter an integer above 0 please. > "
    else
        sentence << " #{usrin + 20} -"
    end
end
# Again, I ask for user input, and if the stdin is a positive integer I push it into the sentence variable as an interpolated string.

puts sentence
# Finally I puts the combined string to the console, formatted such that it can be arbitrarily long.

-----

# Alternately, here's how I think it could be done using just what I would have learned until this lesson:

puts "Hello! Please enter a positive integer. > "
usr_in1 = gets.chomp.to_i
usr_in1 += 20

puts "Hello! Please enter a positive integer. > "
usr_in2 = gets.chomp.to_i
usr_in2 += 20

puts "Hello! Please enter a positive integer. > "
usr_in3 = gets.chomp.to_i
usr_in3 += 20

puts "Twenty added to the numbers you entered gives us #{usr_in1}, #{usr_in2}, and #{usr_in3}."

# If I am exclusively using things gone over in Lesson 9 I cannot check that the integer is actually postive, far as I know. So I do things simply, just getting the stdin, assigning it to a variable as an integer, and modifying that integer immediately. Finally I interpolate the variables in a statement at the bottom. This could also be done without modifying the variables by adding a '+ 20' to the interpolation calls in the final statement - as I did above in the first version of the assignment.
