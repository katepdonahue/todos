class Array

  def my_transpose
    outer_array = []
    self[0].size.times do |i|
      inner_array = []
      self.each do |array|
        inner_array << array[i]
      end
      outer_array << inner_array
    end
    outer_array
  end

end