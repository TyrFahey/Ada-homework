puts "Let's play a numbers game!"

print "How many numbers would you like to enter today? > "
user_int = gets.chomp().to_i
# I ask the user for input and assign it to a variable

if user_int <= 0
    print "Ok! Have a nice day, come back when you'd like to play and enter a positive integer here. > "
    user_int = gets.chomp().to_i
end
# And then check that it is a positive integer, if it is not I ask the user to stop playing around and give me a pos int or go home.

puts "#{user_int}? Sounds good, let's get started!"
# Interpolation is my go-to method for displaying variables within strings, as above.

i = 0
until i == user_int
  i += 1
  print "Number #{i}? > "
  number_to_compare = gets.chomp().to_i
    if number_to_compare % 3 == 0
        puts "#{number_to_compare} is divisable by three!"
    else
        puts "#{number_to_compare} is not divisable by three..."
    end
end
# I initialize my iterator at 0 and then iterate it at the beginning of the loop so that the user sees it as starting at 1. Then a simple conditional checks if the given number is divisible using the modulo operator.

# The same effect, done with a while loop instead:
i = 0
while i < user_int
  i += 1
  print "Number #{i}? > "
  number_to_compare = gets.chomp().to_i
    if number_to_compare % 3 == 0
        puts "#{number_to_compare} is divisable by three!"
    else
        puts "#{number_to_compare} is not divisable by three..."
    end
end
