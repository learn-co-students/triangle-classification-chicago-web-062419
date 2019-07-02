class Triangle

  attr_accessor :one, :two, :three, :kind
  
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    sides = [one, two, three].sort
    if sides[0] + sides[1] <= sides[2] || sides[0] <= 0
      raise TriangleError
    else
      if ((one == two) && (one == three) && (two == three))
        return :equilateral
      elsif ((one == two) || (one == three) || (two == three))
        return :isosceles
      else
        return :scalene
      end
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
