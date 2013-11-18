# a fizzbuzz method:
def fizzbuzz(integer)
  if integer % 15 == 0   then "fizzbuzz"
  elsif integer % 3 == 0 then "fizz"
  elsif integer % 5 == 0 then "buzz"
  else                        integer
  end
end