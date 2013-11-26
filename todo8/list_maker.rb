class Array
  def make_list
    each_with_index.map { |element, index|  "#{index + 1}. #{element}" }
  end
end
