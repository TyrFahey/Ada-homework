
# Problem 1.
person = {
    "first_name" => "ada",
    "last_name" => "lovelace",
    "nickname" => "adie"
}

puts person.length
puts person["last_name"]

# The above calls print out:

3
lovelace

# Problem 2.
animals = {
    "dog" => "canine",
    "cat" => "feline"
}
  
animals["cat"] = "feline"
puts animals["dog"]
puts animals["donkey"]

# The above only prints the first call, as the second call is requesting a key that has a value of nil:

canine

# Problem 3.
workout_summary = {
    "squats" => 99,
    "lunges" => 98,
    "yoga" => false
}
  
workout_summary["lunges"] = 101
puts workout_summary["lunges"]

# The above modifies the "lunges" key to 101, and then the following call prints it:

101

# Problem 4.
menu = {}
menu["ramen"] = "garlic tonkotsu"
menu["burger"] = "bleu sun"
menu["tea"] = "green"
puts menu.length
puts menu["burger"]
puts menu["tater_tots"]

# Menu is created as an empty hash, and then given three key/value pairs, so the length is 3 when it is printed. Of the following two lines, only the "burger" call is printed as the "tater_tots" key has a nil value:

3
bleu sun
  
# Hash problems with hashes using symbol notation:


# Problem 5.
person = {
    first_name: "ada",
    last_name: "lovelace",
    nickname: "adie"
}
  
puts person.length
puts person[:last_name]

# The above block prints out:

3
lovelace

# Problem 6. 
human_being = {
    species: "Sapiens",
    genus: "Homo",
    tribe: "Hominini",
    meaning: "wise man"
}
  
puts human_being.length
puts "The only living species of genus #{human_being[:genus]} are #{human_being[:species]}."
puts human_being[:meaning].length

# This code block prints the length of the hash as 4, as it has four key/value pairs. When it calls the length of the :meaning symbol it gives 8 as the length of the string value:

4
The only living species of genus Homo are Sapiens.
8

# Problem 7.
oatmeal_raisin = {
    gluten_free: false,
    dairy_free: true,
    non_gmo: true,
    vegan: true,
    allergens: "nuts"
}
  
puts oatmeal_raisin.length
  
if oatmeal_raisin[:dairy_free]
    puts "Oatmeal raisin cookies are dairy free."
end
  
oatmeal_raisin[:allergens] += ", soy"
puts oatmeal_raisin[:allergens]
  
if !oatmeal_raisin[:gluten_free] || !oatmeal_raisin[:vegan]
    puts "The oatmeal raisin cookie is either not gluten free or not vegan."
end

# The value of the :dairy_free key is true so the if conditional triggers, printing an interpolated string. The ', soy' value is added to the allergens: key and then called. Finally, the hash is vegan, which fulfills one of the OR statements in the last conditional so it prints the last string: 

5
Oatmeal raisin cookies are dairy free.
nuts, soy
The oatmeal raisin cookie is either not gluten free or not vegan.
