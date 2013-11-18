#Magic 8-Ball

##Objective
#Use methods to keep our code DRY.

##Instructions
#Build a ruby program that when run will ask the user if they want to shake the eight ball.
#If the user answers yes, have it give a random message.
#If the user says no, have it end.

answers = ["yes", "no", "If you want it to be so", "I am not at liberty to say", "I wish I knew", "My icosahedral die does not have enough sides to answer your question", "no way", "not a chance", "a definite yes", "for sure", "not in this world", "if the president says so", "I'm really not sure on this one", "try again later", "if you have to ask, then no", "yes, yes, a thousand times yes", "signs point to yes", "yeaaaaaah", "hell yes", "hell no"]

puts "Do you want to shake the magic eight ball? (y or n)"
user = gets.chomp
if user == "y"
  puts "Alright, ask a yes or no question then hit enter to shake!"
  gets.chomp
  puts answers.sample
else
  puts "Well, my only purpose is to be shaken..."
end