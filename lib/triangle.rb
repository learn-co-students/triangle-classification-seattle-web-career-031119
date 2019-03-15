class Triangle

  attr_accessor :a, :b, :c

  # write code here
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @kind = kind
  end

  def valid?
    ((a + b > c) && (a + c > b) && (b + c > a))
  end

  def kind
    if !valid?
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError

  end

end
