class Triangle

  attr_accessor :first, :second, :third, :kind
  
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if first <= 0 || second <= 0 || third <= 0
      raise TriangleError
    end 

    if first + second <= third || first + third <= second || third + second <= first
      raise TriangleError
    elsif first == second && second == third
      :equilateral
    elsif first == second || first == third || second == third
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
