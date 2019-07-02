require 'pry'
class Triangle
  # write code here
  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    # binding.pry
  end

  def kind
    if valid?
      raise TriangleError
    else  

      if side_a == side_b && side_a == side_c && side_b == side_c
        :equilateral
      elsif side_a != side_b && side_a != side_c && side_b != side_c 
        :scalene
      else
        :isosceles
      end
    end
  end

  def valid?
    side_a <= 0 || side_b <= 0 || side_c <= 0 || side_a + side_b <= side_c || side_a + side_c <= side_b || side_b + side_c <= side_a
  end

  class TriangleError < StandardError
    # error code

  end
end

# eq = Triangle.new(4, 4, 4)
# iso = Triangle.new(4, 5, 4)
# sca = Triangle.new(3, 4, 5)

# p eq.kind
# p iso.kind
# p sca.kind
