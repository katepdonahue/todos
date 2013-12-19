 
class FakeArray
  attr_accessor :elt1, :elt2, :elt3

  def initialize(elt1, elt2, elt3)
    @elt1 = elt1
    @elt2 = elt2
    @elt3 = elt3
  end
 
  def each
    yield(self.elt1)
    yield(self.elt2)
    yield(self.elt3)
  end
 
  def first
    elt1
  end
 
  def [](index)
    if index == 0
      elt1
    elsif index == 1
      elt2
    elsif index == 2
      elt3
    end
  end
 
end