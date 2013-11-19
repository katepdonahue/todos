def first_even(items)
  items.each do |x|
    if x % 2 == 0
      return x
      exit
    end
  end
end