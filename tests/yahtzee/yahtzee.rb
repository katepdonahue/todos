  def roll_dice
    Array.new(5) { rand(1..6) }
  end
 
  def win? roll
    roll.uniq.length == 1 ? true : false
  end

# my_roll = roll_dice

# puts my_roll
# puts my_roll.uniq.length
# puts win? my_roll