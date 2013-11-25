class SecretHandshake
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def commands
    commands_arr = []
    commands_arr << "wink" if number[-1] == "1" 
    commands_arr << "double blink" if number[-2] == "1"
    commands_arr << "close your eyes" if number[-3] == "1"
    commands_arr << "jump" if number[-4] == "1"
    commands_arr.reverse! if number[-5] == "1"
    commands_arr
  end

end
