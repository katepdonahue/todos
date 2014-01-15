class Array

  def my_transpose
    outer_array = []
    self.each do |array|
      outer_array << array[0]
    end
  end

end