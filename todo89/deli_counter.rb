class Deli
  attr_accessor :line

  def initialize
    @line = []
  end

  def take_a_number(name)
    if line.length == 0
      line << "1. #{name}"
    else
      line_num = line[-1].split[0][0..-2].to_i + 1
      line << "#{line_num}. #{name}"
    end
  end

  def now_serving
    serving = line[0].split[1]
    line.shift
    serving
  end

end

# new_deli = Deli.new
# new_deli.line=(["1. Kate", "2. Nobody"])
# # # puts new_deli.now_serving
# p new_deli.line
# p new_deli.line[-1].split[0][0..-2].to_i + 1