class Array

  def my_count
    hash = Hash.new
    self.each do |elt|
      if hash[elt]
        hash[elt] += 1
      else
        hash[elt] = 1
      end
    end
    hash
  end

end