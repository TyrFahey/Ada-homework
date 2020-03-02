puts "This program will ask you to input a number three times, and will share if the number is less than 20. Thanks!\n"

print "What's your first number? :"
num1 = gets.chomp().to_i
# I request to first number and assign it to its variable.

if num1 == 20
    puts "#{num1} is equal to 20!"
elsif num1 < 20
    puts "#{num1} is less than 20!"
else
    puts "#{num1} is greater than 20. Wow!"
end
# and then check the variable against 20 and print the appropiate message to console as needed with a conditional.

print "And the second number please? :"
num2 = gets.chomp().to_i

if num2 == 20
    puts "#{num2} is equal to 20!"
elsif num2 < 20
    puts "#{num2} is less than 20!"
else
    puts "#{num2} is greater than 20. Wow!"
end

print "Finally, what's your last number? :"
num3 = gets.chomp().to_i

if num3 == 20
    puts "#{num3} is equal to 20!"
elsif num3 < 20
    puts "#{num3} is less than 20!"
else
    puts "#{num3} is greater than 20. Wow!"
end

if num1 && num2 && num3 == 20
    puts "Please enter a number besides twenty next time, for some variance. ;D"
else
    puts "Thanks for participating! I have all the numbers I need."
end
# The final statement thanks the user for participating and has a bit of sassy chide hidden in there for single-minded folks.
