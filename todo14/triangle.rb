class TriangleError < StandardError
end

class Triangle
  attr_reader :a, :b, :c, :error
  # TYPE = [:equilateral, :isosceles, :scalene]

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if size_check && triangle_inequality
      if a == b && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    end
  end

  def size_check
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    else
      true
    end
  end

  def triangle_inequality
    if a + b <= c || b + c <= a || a + c <= b
      raise TriangleError
    else
      true
    end
  end

end
