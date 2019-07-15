class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if valid
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end
  end

  def valid
    a <= 0 || b <= 0 || c <= 0 || a + b <= c || a + c <= b || b + c <= a
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
