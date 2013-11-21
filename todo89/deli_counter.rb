class Deli
  attr_accessor :line

  def initialize
    @line = []
  end

  def take_a_number(name)
    line << "#{line.length + 1}. #{name}"
  end

end

new_deli = Deli.new
puts new_deli.line=(["Kate"])