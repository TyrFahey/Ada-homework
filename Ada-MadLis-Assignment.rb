# My mad-lib game! Just a simple one, you'll find my 'template' mad-lib commented out at the bottom.
puts "Welcome to my Mad Libs game! Please enter some information below and I'll get to mad-libbing."
puts "Can I get a name?"
# The user input is capitalized, in case the user did not, to make it blend in to the mad lib better.
user_name = gets.chomp().capitalize
puts "How about a type of pet?"
# Here the stdin is downcased for the same reasons, to make it blend into the completed string better.
user_pet = gets.chomp().downcase
puts "an adjective?"
adjective = gets.chomp().downcase
puts "and a verb?"
verb = gets.chomp().downcase
puts "can I get a person, animal, or plant?"
noun = gets.chomp().downcase
puts "and another animal, as weird as you can think of > "
animal = gets.chomp().downcase
# And finally, the last request is for a number, which would be stored as a string if I did not convert it to an integer with to_i.
puts "finally, please give me a small number."
number = gets.chomp().to_i
# Having gotten the user input I need I use interpolation and some \n new lines to display it.
puts "Awesome! Great choices.\nWelcome to #{user_name}'s Tiny Terrors! We specialize in unusual pets here, and we have so many to show you! How about a #{user_pet}? \nHe's very nice I promise, even if you don't like #{user_pet}s, he's a charmer. If that's not your style I have my fair share of #{adjective} bois, and #{verb}ing gals too!\nFrom #{noun}s to #{animal}s, we can provide companions of every size, style and description. We have over #{number}00 bearded dragons alone!"

# My template string. Had a bit of trouble with the readability of the verb entry, I'm considering how a conditional might help with that but the rules of english are too variable to make it perfect.
# "Awesome! Great choices.
# Welcome to {Tyra}'s Tiny Terrors! We specialize in unusual pets here, and we have so many to show you! How about a {dog}?
# He's very nice I promise, even if you don't like dogs, he's a charmer. If that's not your style I have my fair share of {best} bois, and {jump}ing gals too!
# From #{rose}s to #{unicorn}s, we can provide companions of every size, style and description. We have over #{11}00 bearded dragons alone!"
