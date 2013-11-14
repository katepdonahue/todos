def decryptit(mixed_up_secret)
  # change space back to ^
  space_back_to_sym = mixed_up_secret.gsub(" ", "^")
  # change e's back to <
  e_back_to_sym = space_back_to_sym.gsub("e", "<")
  # change ^ back to e
  sym_back_to_e = e_back_to_sym.gsub("^", "e")
  # change < back to space
  sym_back_to_space = sym_back_to_e.gsub("<", " ")
  # reverse it
  reverse_it = sym_back_to_space.reverse

end

my_secret = ". taKesiesihte,dlroweoll H"
puts decryptit(my_secret)
