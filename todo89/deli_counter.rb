class Deli
  attr_accessor :line

  def initialize
    @line = []
  end

end

new_deli = Deli.new
puts new_deli.line=(["Kate"])