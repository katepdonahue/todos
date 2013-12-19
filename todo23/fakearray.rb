 
class FakeArray
  attr_accessor :elt1, :elt2, :elt3
  
  def initialize(elt1, elt2, elt3)
    @elt1 = elt1
    @elt2 = elt2
    @elt3 = elt3
  end
 
  def each
    yield(self.elt1, self.elt2, self.elt3)
  end
 
  def first
    
  end
 
  def []()

  end
 
end