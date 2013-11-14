100.times do |i|
  if (i + 1) % 3 == 0 && (i + 1) % 5 == 0
    puts "fizzbuzz"
  elsif (i + 1) % 3 == 0
    puts "fizz"
  elsif (i + 1) % 5 == 0
    puts "buzz"
  else
    puts (i + 1)
  end
end