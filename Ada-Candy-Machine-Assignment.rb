# When I could not find the original homework file for this assignment, I struggled to come up with the exact syntax I used the first time around without taking advantage of things I learned later, this refactored code is what I settled on.
# Re-doing the assignment has really showed me how many different ways I could do this though, I spent a long while trying to re-write code the way I did the first time only to find that one of more component parts worked apart but not in sync. It was it's own kind of learning experience.

# A greeting to introduce to user to the app.
puts "Welcome to the online Candy-O-Matic! What kind of virtual sweet experience can I give you today?\n"

# The hash storing the component candy hashes, their prices, and names. Originally I had something of a multi-dimensional array, but it is much syntactically sweeter to use a hash within a hash. It saves several lines later on.
candy_hash = { A: {price: 0.75, name: "Malted Milk Balls"},
    B: {price: 1.00, name: "Dried Fruit Skin"},
    C: {price: 0.80, name: "Sweet and Sours Gummis"},
    D: {price: 1.25, name: "Dairy-Free Dark Chocolate"},
    E: {price: 0.75, name: "Dark PB Cups"},
}

# This .each loop lists out the candies and their appropiate selection letter, assigning the iterator 'deets' to the secondary hash's key/values.
candy_hash.each do |letter, deets|
    puts "#{letter} - $#{'%.2f' % deets[:price]} - #{deets[:name]}"
end

# A new line at both ends of this statement for better readability, and because it cannot easily be added to the end of the initial candy display loop.
puts "\nOk, I hear ya, I hear ya, give you your candy already... Well how much moolah you got?\n"

# The user is asked for their budget, and the stdin is converted to float to compare with the :price value of the candy hash.
print "Enter moolah amounts here > $"
moolah = gets.chomp().to_f

# The while loop to check if the user input is a positive value. If it is not the user is jokingly chided and re-asked for input.
while moolah < 0
    print "Please enter a positive moolah amount, this machine don't run on charity friend! > $"
    moolah = gets.chomp().to_f
end

# User is asked for their selection, and the stdin is capitalized and converted to_sym to compare with the letter keys of the parent candy_hash.
print "So what'll it be? > "
candy_du_jour = gets.chomp().capitalize.to_sym

# If the selection is not present in the keys of the parent hash the user is asked for valid input.
if candy_hash[candy_du_jour] == false
    puts "Enter a value that matches A, B, C, D or E please! > "
    candy_du_jour = gets.chomp().capitalize.to_sym
end

# If the user does not have enough money for the letter they have entered they are asked for a different selection.
while moolah < candy_hash[candy_du_jour][:price]
    puts "\nFriend, you're gonna need more than that for a selection like #{candy_hash[candy_du_jour][:name]}. Come back when you have enough or choose another item."
    print "\nWhat'll it be? >"
    candy_du_jour = gets.chomp().capitalize.to_sym
end

# If the user has enough money for their choice their change is calculated.
# The result of that calculation is assigned to a variable to make it easier to display it as a 2 decimal float in the final interpolated statement.
# The user is given their virtual candy and told their change.
change = moolah - candy_hash[candy_du_jour][:price]
puts "\nHere's your #{candy_hash[candy_du_jour][:name]}, good choice! Thanks for visiting Candy-O-Matic, we hope your user experience has been sufficiently virtual. Here's your change! > $#{'%.2f' % change}"
