class Array

  def my_count
    hash = Hash.new
    each do |elt|
      hash[elt] ||= 0
      hash[elt] += 1
    end
    hash
  end

end