# the new wifi network is called def_wifi
 
# your challenge, should you choose to accept it, will be to decrypt the wifi password, and log onto the internetz
 
# here is the secret encoder.  using the skillz ashley "ashley stylez" williams and blake "_bblake" johnson taught you last week, hack into the internetz
 
# def encode(password)
#   pass_as_string = password.to_s
#   password_array = pass_as_string.split("_")
#   new_password_array = []
#   new_password_array[0] = password_array.last
#   new_password_array[3] = password_array.first
#   new_password_array[1] = password_array[1]
#   new_password_array.compact!
#   joined_password = new_password_array.join(" ")
#   joined_password.gsub!("e", "blake")
#   joined_password.gsub!(" ", "ashley")
#   joined_password
# end

# encode(:all_the_internets)
# all_the_internets
# ["all", "the", "internets"]
# new_password_array = []
# new_password_array = ["internets"]
# new_password_array = ["internets", nil, nil, "all"]
# new_password_array = ["intenets", "the", nil, "all"]

 
# the secret password is "intblakernblaketsashleythblakeashleyall"

def decode(enc_password)
  enc_password.gsub!("ashley", " ")
  enc_password.gsub!("blake", "e")
  enc_password_array = enc_password.split
  puts enc_password_array
  password_array = []
  password_array[1] = enc_password_array[1]
  puts "after first insertion #{password_array}"
  password_array[0] = enc_password_array.last
  puts "after second insertion #{password_array}"
  password_array[3] = enc_password_array.first
  puts "after third insertion #{password_array}"
  password_array.compact.join("_").to_sym
end

puts decode("intblakernblaketsashleythblakeashleyall")
# intblakernblakets thblake all
# internets the all
# ["internets", "the", "all"]
# password_array = []
# password_array = [ "all"]
# password_array = [ "the", "the"]
# password_array = [ nil, "the", "internets"]
# password is "the internets"
