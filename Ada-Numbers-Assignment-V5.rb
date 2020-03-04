

int_hash = {
    random_numbers: [rand(12..21), rand(12..21), rand(12..21), rand(12..21), rand(12..21)],
    user_input: [],
}
# The first hash, containing both the random numbers as an array and the empty array to be filled with user input later.
# I struggled with a sweeter way to generate our random numbers, i.e. creating the array with a random default value, a .times loop to generate and fill the array, etc...
# As far as I can tell the sweetest and most straighforward way to do that is to simply create the array with rand(n..n) as elements. If I needed a variable or user defined amount of random numbers I think a .times loop would be the way.


count_hash = {}
# The empty second hash, to be filled the two .each loops iterating over the first array later.

puts "Welcome to my numbers game! Please enter 5 integers between 12 and 21, both inclusive. > "
# The call for input, defining the required integers.

i = 0
while i < 5
    i += 1
    print "\nWhat's number #{i}? > "
    user_in = gets.chomp.to_i
    while user_in < 12 || user_in > 21
        print "Please enter an integer between 12 and 21 > "
        user_in = gets.chomp.to_i
    end
    int_hash[:user_input] << user_in
end
# A while loop to fill the integer hash with user generated numbers. The input is chomped and pushed into the :user_input array if it is between 12-21.

int_hash[:random_numbers].each do |key|
    if count_hash[key] == nil
        count_hash[key] = Hash.new(0)
        count_hash[key][:rand_count] += 1
    else
        count_hash[key][:rand_count] += 1
    end
end
# A .each loop to iterate over the random numbers array in the first hash and modify the keys of the count_hash accordingly.

int_hash[:user_input].each do |key2|
    if count_hash[key2] == nil
        count_hash[key2] = Hash.new(0)
        count_hash[key2][:user_count] += 1
    else
        count_hash[key2][:user_count] += 1
    end
end
# A .each loop to iterate over the user generated numbers array in the first hash and modify the keys of the count_hash accordingly.

3.times do |i|
  print "What number do you want information about? > "
  query = gets.chomp.to_i
  # The user is asked for their query, and it is chomped and converted to an integer.
  puts "Using the first hash..."
  rands = int_hash[:random_numbers].select { |n| n == query }
  users = int_hash[:user_input].select { |n| n == query }
  # Using .select, I create an array of all elements matching the query. I use the .length of these to mark the frequency of those elements in the original arrays.
  if rands.length == 0 && users.length == 0
    puts "The number #{query} did not show in the randomly generated numbers or in the numbers provided by the user earlier."
  elsif rands.length > 0 && users.length == 0
    puts "The number #{query} shows up in the randomly generated numbers #{rands.length} time(s)."
    puts "The number #{query} was not entered by the user earlier."
  elsif users.length > 0 && rands.length == 0
    puts "The number #{query} did not show up in the randomly generated numbers."
    puts "The number #{query} was entered by the user earlier #{users.length} time(s)."
  else
    puts "The number #{query} shows up in the randomly generated numbers #{rands.length} time(s)."
    puts "The number #{query} was entered by the user earlier #{users.length} time(s)."
  end
  # Finally I construct a conditional to spit out the grammatically appropiate responses, with the final lengths of those arrays interpolated into the statements the user sees.

  puts "Using the second hash..."
  if count_hash[query] == nil
    puts "The number #{query} did not show in the randomly generated numbers or in the numbers provided by the user earlier."
  elsif count_hash[query][:user_count] > 0 && count_hash[query][:rand_count] == 0
    puts "The number #{query} did not show up in the randomly generated numbers."
    puts "The number #{query} was entered by the user earlier #{count_hash[query][:user_count]} time(s)."
  elsif count_hash[query][:rand_count] > 0 && count_hash[query][:user_count] == 0
    puts "The number #{query} shows up in the randomly generated numbers #{count_hash[query][:rand_count]} time(s)."
    puts "The number #{query} was not entered by the user earlier."
  else
    puts "The number #{query} shows up in the randomly generated numbers #{count_hash[query][:rand_count]} time(s)."
    puts "The number #{query} was entered by the user earlier #{count_hash[query][:user_count]} time(s)."
  end
  # The .each loops at lines 31 and 41 have iterated the values of the hash nested within count_hash. Those values are used here to define my conditional and are interpolated into the statements printed to console.
end
