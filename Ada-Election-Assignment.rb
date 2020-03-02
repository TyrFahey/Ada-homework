# I was writing this code while the presidential election was heating up, so I wanted to go with an election that was little bit lighter.
# So I went with electing the best classic Star Trek captain based off of the top three candidates nominated by my peers (sorry Captain Pike fans).

# A brief introduction here
puts "Time to vote! Welcome to my election voting program.\n"

# My candidate array
candidates = ["Janeway", "Picard", "Kirk"]

# Simple string interpolation to display my candidates.
puts "The candidates are: #{candidates[0]}, #{candidates[1]}, and #{candidates[2]}.\n"

# The vote array, this will be used in the do loop later to get votes.
vote_array = ["Vote #1: ", "Vote #2: ", "Vote #3: ", "Vote #4: ", "Vote #5: ", "Vote #6: ", "Vote #7: ", "Vote #8: ", "Vote #9: ", "Vote #10: "]

# I assign the default 0 values to my candidates here, including a variable for incorrect user input.
janeway_count = 0
picard_count = 0
kirk_count = 0
bad_input = 0

# This is my do loop for determining vote counts, I capitalize stdin to hopefully catch user input even if it is incorrectly cased. I considered piping some OR options to account for mispellings but I discarded that as being excessive.
vote_array.each do |votes|
    print votes
    candidate = gets.chomp().capitalize!
    if candidate == "Janeway"
        janeway_count += 1
    elsif candidate == "Picard"
        picard_count += 1
    elsif candidate == "Kirk"
        kirk_count += 1
    else
        bad_input += 1
    end
end

puts "\nCalculating election results...\n"
# This is my solution for handling 0, 1, and greater vote numbers without a (s) and with correct grammer.
if janeway_count > 1
    janeway_vote = " votes"
elsif janeway_count == 0
    janeway_vote = " votes"
else
    janeway_vote = " vote"
end

if picard_count > 1
    picard_vote = " votes"
elsif picard_count == 0
    picard_vote = " votes"
else
    picard_vote = " vote"
end

if kirk_count > 1
    kirk_vote = " votes"
elsif kirk_count == 0
    kirk_vote = " votes"
else
    kirk_vote = " vote"
end

# An interpolated string to handle the election results display and the grammatically appropiate vote/votes.
puts "Election results are in! \nJaneway: #{janeway_count}#{janeway_vote}\nPicard: #{picard_count}#{picard_vote}\nKirk: #{kirk_count}#{kirk_vote}\n"

# A conditional to handle the winner of our election, including ties. I can't help but feel like I could refactor this code to be sweeter but I am unsure how.
if janeway_count > picard_count && kirk_count
    print "Congratulations to our new Captain for Life, Kathryn Janeway!"
elsif picard_count > janeway_count && kirk_count
    print "Congratulations to our new Captain for Life, Jean-Luc Picard!"
elsif kirk_count > janeway_count && picard_count
    print "Congratulations to our new Captain for Life, James T. Kirk!"
elsif picard_count == janeway_count || picard_count == kirk_count || kirk_count == janeway_count
    print "Oh no! We have a tie for the win! Please retake the election and/or fight amongst yourselves. It's every person for themself now!"
else
    print "The election officials have experienced an unforseen error, please try again."
end
