require 'debugger'

def blakes_method
  array = [{:name => "blake", :color => "blue",}, {:name => "chris", :color => "green"}]
  array.each do |hash|
    debugger
    hash.each_pair do |name, color|
      debugger
      puts "hello"
    end
  end
end

local = blakes_method