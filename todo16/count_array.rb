class Array

  def my_count
    hash = Hash.new
    self.each do |elt|
      hash[elt] = 1
    end
    hash
  end

end