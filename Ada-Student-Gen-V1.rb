
# The initial empty arrays.
names = []
id_nums = []
email_addys = []

# I ask for user input 5 times and encode it into the array in all uppercase, modifying the array itself by appending an !.
5.times do
    puts "Please enter the student name, first and last > "
    names << gets.chomp().upcase!
end

# I would have preferred to do this with an until or while loop, if only because I could build the check for dupes into it more efficently, and it's easier to modify it to account for more or less than 5 names that need to be recorded. I use .uniq! to modify the array to remove any dupes.
names.length.times do
    id_nums << rand(111111..999999)
    id_nums.uniq!
end

# A brief until loop to account for the rare chance of a duplicate id number resulting in an id_nums array that's shorter than the names.
until id_nums.length == names.length do
    id_nums << rand(111111..999999)
    id_nums.uniq!
end

# Another possible method:

# puts "How many students need to be assigned numbers and emails? > "
# x = gets.chomp().to_i

# until names.length == x
#   puts "Please enter the student name, first and last > "
#   names << gets.chomp().upcase!
# end

# while id_nums.length < names.length
#   id_nums << rand(111111..999999)
#   id_nums.uniq!
# end

# A times loop to assemble our emails. I grab the first character of the name with .char.first (ruby is so straighforward!), and the last name by a .split method. The email itself I assemble with interpolation, initially I did this by assigning this info to variables for increased readability and calling those within the string, but here I am doing it all inside the interpolation for more concise code.
names.length.times do |i|
    email_addys << "#{names[i].chars.first}#{names[i].split(" ").last}#{id_nums[i].to_s[3,6]}@adadevelopersacademy.org"
end

# I iterate through the arrays here, accounting for a length of array besides '5' with a while loop. I use interpolation over concantenation to display the elements.
i = 0
while i < names.length
    puts "#{names[i]}, #{id_nums[i].to_s}, #{email_addys[i]}"
    i += 1
end
