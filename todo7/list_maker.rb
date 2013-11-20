class Array
  def make_list
    number = 0
    self.collect do |element|
      number += 1
      "#{number}. #{element}"
    end
  end
end