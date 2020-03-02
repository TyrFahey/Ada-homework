
# Problem 1:
2.times do
    puts "dance"
end

# The loop iterates 2 times, printing 'dance' to console:

# dance
# dance

# Problem 2:
10.times do |i|
    puts i
end

# The loop iterates 10 times, starting at 0 and counting to 9.

# 0
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9

# Problem 3:
3.times do
    puts "coding!"
end
puts "fun!"

# The loop executes 3 times, starting at 0. After the loop is complete the unattached puts statement triggers.

# coding!
# coding!
# coding!
# fun!

# Problem 4:
5.times do |x|
    puts "#{x} chicken(s)"
end

# executes 5 times, starting at 0)

# 0 chicken(s)
# 1 chicken(s)
# 2 chicken(s)
# 3 chicken(s)
# 4 chicken(s)

# Problem 5:
10.times do |i|
    puts i * i
end

# The loop executes 0 * 0, then 1 * 1, then 2 * 2 etc until 9 * 9, i.e. loop 10 times.

# 0
# 1
# 4
# 9
# 16
# 25
# 36
# 49
# 64
# 81

# Problem 6:
(1..5).each do
    puts "hello!"
end

# 1..5 is inclusive, so it loops 5 times, 1...5 would be exclusive, and as such would loop only 4 times.

# hello!
# hello!
# hello!
# hello!
# hello!

# Problem 7:
(1..3).each do |i|
    puts "#{i} animals(s)"
end

# 1..3 starts at 1, so unlike say, a 3.times loop this one will start at 1 and go inclusively until 3, compared to starting at 0 and executing until 2)

# 1 animal(s)
# 2 animal(s)
# 3 animal(s)

# Problem 8:
(1..3).each do |i|
    puts i * i
end

# Again, starting at 1 and counting until 3, this loop executes like 1 * 1, 2 * 2, 3 * 3...

# 1
# 4
# 9

# Problem 9:

total = 0
  
(1..3).each do |i|
    total = total + i
end
  
puts total

# This is a longer way of writing total += i, executing like total(0) += 1, total(1) += 2, total(3) += 3. When the total is put, it is 6)

# 6

# Problem 10:
(1..10).each do |x|
    if x == 5
      puts "You got a winner!"
    end
end

# The only thing actually written to the console here is "You got a winner!", but it will sequentially work through iterations until it hits 5, once that condition is true it puts the phrase to console but it will keep counting until 10 inclusive i.e. 1, 2, 3, 4, 5, "phrase" triggers, 6, 7, 8, 9, 10.

# You've got a winner!

# Problem 11:

i = 0
  
while i < 3
    puts "hi"
    i = i + 1
end

# The loop starts at 0 so it will only print 3 times, 0, 1, 2 iterations respectively. Once it is equal to 3 it no longer puts "hi")

# hi
# hi
# hi

# Problem 12:

i = 0
  
while i < 3
    puts "hi"
    i = i + 1
end
  
puts "bye"

# Identical to loop 11, this again iterates while it is less than 3, so it goes through 0, 1, 2 and then triggers its sentinel condition. Following the completion of the loop we puts "bye" to console as well.

# hi
# hi
# hi
# bye

# Problem 13:

i = 0
  
while i < 3
    i += 1
    puts i
end

# Here the puts statement is below the iterator so when the puts statement triggers the i already has a value of 1, but the iteration happens after the while loop triggers, so even though the while is contingent on the iterator being less than 3, it effectively puts as if it is 1..3 inclusive)

# 1
# 2
# 3

# Problem 14:

x = 5
i = 0
  
while i < 3
    x = x + 1
    i = i + 1
end
  
puts x

# All that is ever printed to console is 8. The loop is x += 1 three times, i.e. the loop iterates like [iteration 0] - x(5) += 1, [iteration 1] x(6) += 1, [iteration 2] x(7) += 1, resulting in 8 when the loop is finally complete and the subsequent 'puts x' statement triggers))

# 8

# Problem 15:

i = 3
  
while i > 0
    puts "ada!"
    i = i - 1
end

# This is a backwards while loop, it iterates from 3 descending, i.e. i = 3, i = 2, i = 1, i = 0 and the loop hits its sentinel condition. Also could be written as i -= 1)

# ada!
# ada!
# ada!

# Problem 16:

i = 1
  
while i
    puts "a while"
end

# I am glad I am not actually having to run these! This is an infinite loop, with no stop condition. It will simply put "a while" to console ad infinitum.

# a while <= infinitely

# Problem 17:

i = 1

while i < 100
    puts "o hai"
    i = i * 100
end

# This only executes once, i being 1 at the start of the loop and 100 at the end of it, so it will not iterate any further past.

# o hai
