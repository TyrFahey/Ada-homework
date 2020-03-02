
# I create my blank array here.
walkers = []

# Some introductory exposition here.
puts "Hello and welcome to Tyra's Walk-A-Thon Tracker!"
puts "Let's see how much money we can earn today!\n"

# Here I define a method to ask my many questions, to save on constantly gets.chomp-ing answers into variables.
def ask (question, kind = "string")
    print "#{question} > "
    answer = gets.chomp()
    return answer
end

# I define a simple linebreak for formatting purposes here.
def line
    puts "-" * 50
end

# Below is the snippet I would use to define how long the ask loop should be, for versions of this code that sets the number of participants from user input.
# lineup = ask("How many walkers are participating today?").to_i

goal = ask("What is the earning goal for this event?").to_i

# This is where I ask the amount each walker is earning per lap. Below I have commented out a snippet that would instead set how much each walker is making per lap individually in the hash via the times loop I use for gathering most user input.
per_lap = ask("How much is each walker earning per lap?").to_f

line

# I do this as a 5.times loop here according to assignment directions, but it could be refactored into a loop based on the length of my walker lineup as well.
# lineup.times do |x| <= which would look like this.

# I display the dollar amounts to 2 decimal points using '%.2f'. I also iterate the participant number from the basic 'x' iterator that's part of the times loop to avoid having to make a new variable unnessecarily.
5.times do |x|
    laps = ask("How many laps did walker ##{x + 1} complete?").to_i
    # per_lap = ask("How much is walker ##{x + 1} earning per lap?").to_f <= previously mentioned question to define the per lap rate individually.
    total = laps * per_lap
    walkers[x] = Hash.new
    walkers[x][:number] = x + 1
    walkers[x][:laps] = laps
    # walkers[x][:lap_rate] = per_lap <= the setting command for the lap rate.
    walkers[x][:earned] = total.to_f
    puts "\t\t ===> Walker ##{x + 1} earned $#{'%.2f' % total}"
end

line

# Here I use the .inject method to sum my hash, .sum could also be used.

# walkers.sum {|h| h[:earned] } <= like so, if you have the enumerable gem active.

total_sum = walkers.inject(0) { |sum, hash| sum += hash[:earned] } 

# A conditional to check if we met our goal, in it I set a variable 'diff' to tell us how much we beat it by or how much we missed it by.
if total_sum > goal
    diff = total_sum - goal
    puts "Wow! We met our earning goal!\nFinal total: $#{'%.2f' % total_sum}\nWooooooo! We beat it by $#{'%.2f' % diff}"
elsif total_sum == goal
    puts "Whoa, we just barely made it!\nFinal total: $#{'%.2f' % total_sum}\nI can't believe we made it, great work folks!"
else
    diff = goal - total_sum
    puts "I'm sorry, it looks like we didn't make our goal today. Boo!\nFinal total: $#{'%.2f' % total_sum}\nGood luck next time folks, we only missed our goal by $#{'%.2f' % diff}." 
end

line

puts "Highest earners:"

i = 1
walkers.each do |y|
    # Here I compare each element on the walkers array to check if their :earned key equals the highest value of all the :earned keys on the array, as shown by the max_by method. This allows for duplicate max earners.
    if y[:earned] == walkers.max_by{ |k| k[:earned] }[:earned]
        puts "#{i}. Walker ##{y[:number]} - earned $#{'%.2f' % y[:earned]}."
        i += 1
    end
end
