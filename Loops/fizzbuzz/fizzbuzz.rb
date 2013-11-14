101.times do |i|
  next if i == 0
  if i % 3 == 0 && (i + 1) % 5 == 0
    puts "fizzbuzz"
  elsif i % 3 == 0
    puts "fizz"
  elsif i % 5 == 0
    puts "buzz"
  else
    puts i
  end
end