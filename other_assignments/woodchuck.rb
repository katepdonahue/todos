class Woodchuck
  attr_accessor :chuck_count
 
  @@woodchuck_count = 0
  WOODCHUCKS = []
 
  def initialize
    @chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
  end
 
  def chuck_wood
    @chuck_count += 1
  end
 
  def self.woodchuck_count
    @@woodchuck_count
  end
 
end

rand(100).times do 
  Woodchuck.new
end

Woodchuck::WOODCHUCKS.each do |woodchuck|
  rand(100).times do
    woodchuck.chuck_wood
  end
end
 
p Woodchuck::WOODCHUCKS