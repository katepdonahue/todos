class Array
  def make_list
    map.with_index { |element, index|  "#{index + 1}. #{element}" }
  end
end