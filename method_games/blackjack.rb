#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  A player gets dealt two cards which have values between 1-11. 
# After they get dealt two cards you should show them the total score of their cards and ask them if they want to hit or stay. 
# A player is allowed to "hit" up to two times.  After each hit you should ask if they want to hit or stay and display the total value of their cards. If they don't want to hit, and they are not at 21 they lose.  Your program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game (there should be a commit with a working version of this game), alter the game so that a player can "hit" as many times as they want.
def total(number)
  number.compact.reduce(:+)
end

def hit?(an_array, index)
  puts "Would you like to hit or stay? (h or s)"
  hit_or_not = gets.chomp
  if hit_or_not == "s"
    puts "Cool."
    an_array[index] = 0
    puts total(an_array)
  elsif hit_or_not == "h"
    an_array[index] = rand(1..11)
    puts "Your card is #{an_array[index]}"
    puts "Your total is #{total(an_array)}."
  else
    puts "you broke the game!"
  end
end

puts "Welcome to Blackjack."
cards = [ rand(1..11), rand(1..11), nil , nil]
num_cards = 2
puts "Your two cards are #{cards[0]} and #{cards[1]}."
puts "Your total is #{total(cards)}."
while cards[3] == nil && cards[2] != 0
  hit?(cards, num_cards)
  num_cards += 1
end

if total(cards) == 21
  puts "You win!"
else
  puts "You lose."
end

