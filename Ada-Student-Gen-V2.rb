
# The starting array, to be filled with hashes.
student_data = []

# The user is asked for input, and the loop is based on the stdin. A hash is created inside student_data and populated with the provided name and a random ID, which are used to assemble an email address.
print "How many students need to be assigned numbers and emails? > "
x = gets.chomp().to_i
x.times do |y|
    student_data << Hash.new
    print "\nWhat is the student's first and last name? > "
    name = gets.chomp().upcase!
    student_data[y][:name] = name
    student_data[y][:id] = rand(111111..999999)
    student_data[y][:email] = "#{name.chars.first}#{name.split(" ").last}#{student_data[y][:id].to_s[3,6]}@adadevelopersacademy.org"
end

# The inbuilt functionality of hashes is useful here, as I can iterate through the values of each hash easily with .values.
student_data.length.times do |z|
  print student_data[z].values
end
