# a fizzbuzz method:

class Integer
  def fizzbuzz
    if self % 15 == 0   then "fizzbuzz"
    elsif self % 3 == 0 then "fizz"
    elsif self % 5 == 0 then "buzz"
    else                     self
    end
  end
end