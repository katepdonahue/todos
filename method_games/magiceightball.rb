#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

answers = ["yes", 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

puts "Do you want to shake the magic eight ball? (y or n)"
user = gets.chomp
if user == "y"
  puts "Alright, ask a yes or no question then hit enter to shake!"
  gets.chomp
  puts answers.sample
else
  puts "Well, my only purpose is to be shaken..."
end