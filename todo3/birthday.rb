puts "What is your birthday? (mm/dd)"
birthday = gets.chomp
today = Time.now.strftime("%m/%d")
if birthday == today
  puts "Happy Birthday!"
end
