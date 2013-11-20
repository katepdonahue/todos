
class Array
  def my_each
    # iterates through an array
    # does whatever you ask for each of the elements in the array
    # yield to the block with each element in the array
    # returns the original array
    return self.to_enum unless block_given?
    i = 0
    while i < self.length
      yield array[i]
      i += 1
    end
    return self
  end

  def my_first_each
    i = 0
    # yield to the block just the first element in the array
    # return the original array
    yield self[0]
    return self
  end
end

array = [1, 2, 3]
my_first_each(array) {|first_element| puts first_element}

# def yielder
#   a = 7
#   b = 5
#   if block_given?
#     yield a, b
#   end
# end

# yielder {|first, second| puts first}
