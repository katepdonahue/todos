

def encryptit(secret)
  reverse_it = secret.reverse
  # switch the spaces and e's by:
  # change the spaces to < and the e's to ^
  sub_spaces = reverse_it.gsub(" ", "<")
  sub_e = sub_spaces.gsub("e", "^")
  # change the < to e's and the ^ to spaces
  sub_back_e_where_spaces_were = sub_e.gsub("<", "e")
  sub_back_spaces_where_e_was = sub_back_e_where_spaces_were.gsub("^", " ")
end

my_secret = "Hello world, this is Kate."

puts encryptit(my_secret)
