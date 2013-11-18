# a fizzbuzz method:
def fizzbuzz(integer)
  if integer % 15 == 0   then puts "fizzbuzz"
  elsif integer % 3 == 0 then puts "fizz"
  elsif integer % 5 == 0 then puts "buzz"
  else                  puts integer
  end
end