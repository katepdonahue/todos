#Write a method called is_a_teenager that takes age as a parameter and returns
#true/false depending on whether the age indicates that the person is a 
#teenager

#To test your solution run `rspec teenager_spec.rb` in your terminal

def is_a_teenager?(age)
  if age > 12 && age < 20
    return true
  elsif age < 13 || (age > 19 && age < 30)
    return false
  elsif age >= 30
    return "No one would ever mistake you for a teenager."
  end
end
