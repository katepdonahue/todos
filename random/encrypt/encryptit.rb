

def encryptit(secret)
  reverse_it = secret.reverse
  # switch the spaces and e's by:
  # change the spaces to < and the e's to ^
  sub_spaces = reverse_it.gsub(" ", "<")
  sub_e = sub_spaces.gsub("e", "^")
  # change the < to e's and the ^ to spaces
  sub_back_e = sub_e.gsub("<", "e")
  sub_back_spaces = sub_back_e.gsub("^", " ")
  # take the first half (or slightly less than half if the secret has an odd number of chars)
  # and move it to the end
  first_half = sub_back_spaces[0..(secret.length/2)]
  second_half = sub_back_spaces[((secret.length/2) + 1)..(secret.length)]
  swap_beg_end = second_half + first_half
end

my_secret = "Hello world, this is Kate."

mixed_secret = my_secret[((my_secret.length/2) + 1)..(my_secret.length)] + my_secret[0..(my_secret.length/2)]
puts mixed_secret
unmixed_secret = mixed_secret[((mixed_secret.length/2 + 1))..(mixed_secret.length)] + mixed_secret[0..(mixed_secret.length/2)]
puts unmixed_secret
# puts encryptit(my_secret)
