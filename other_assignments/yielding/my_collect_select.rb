class Array
  def my_collect
    # iterates through an array
    # does whatever you ask for each of the elements in the array
    # yield to the block with each element in the array
    # returns the array after the effects of the block
    # return self.to_enum unless block_given?
    # i = 0
    # new_array = []
    # while i < self.length
    #   new_array << (yield self[i])
    #   i += 1
    # end
    # new_array
  end

  def

  def my_select
    # iterates through an array
    # checks if the statment in the block is true for each element of the array
    # drops the element if the condition is not met
    # returns the manipulated array
  end
end

# array = [1, 2, 3]
# puts my_collect(array) {|element| element + 1}