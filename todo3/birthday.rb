require 'active_support/core_ext/integer/inflections'

puts "What is your birthday? (mm/dd/yyyy)"
birthday = gets.chomp
if !/\d\d\/\d\d\/\d\d\d\d/.match birthday
  puts "I am but a humble computer. I do not understand you. Goodbye."
  exit
end
today = Time.now.strftime("%m/%d")
today_year = Time.now.strftime("%Y")
how_old = today_year.to_i - birthday[6..9].to_i
if birthday[0..4] == today
  puts "Happy #{how_old.ordinalize} Birthday!"
else
  puts "Happy unbirthday! It's my unbirthday too!"
end

