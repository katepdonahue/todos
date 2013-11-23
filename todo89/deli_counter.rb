class Deli
  attr_accessor :line

  def initialize
    @line = []
  end

  def take_a_number(name)
    line << "#{line.length + 1}. #{name}"
  end

  def now_serving
    serving = line[0].split[1]
    line.shift
    serving
  end

end

# new_deli = Deli.new
# new_deli.line=(["1. Kate", "2. Nobody"])
# # puts new_deli.now_serving