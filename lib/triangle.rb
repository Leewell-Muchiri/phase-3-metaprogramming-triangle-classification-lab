class Triangle

  attr_reader :a, :b ,:c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    identify_valid_triangle
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else 
      :scalene
    end
  end

  private
  def identify_valid_triangle
    raise TriangleError, "Sides must be greater than 0" if [a, b, c].min <= 0
    raise TriangleError, "This is not a valid triangle" if a >= b + c || b >= a + c || c >= a + b
  end

  class TriangleError < StandardError
  end
end


