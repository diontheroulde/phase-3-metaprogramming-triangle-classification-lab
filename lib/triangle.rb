require "pry"

class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
   @a = a
   @b = b
   @c = c
  end

  def kind
    check_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else 
      :scalene
    end
  end

  def side_greater_than_zero?
    a > 0 && b > 0 && c > 0
  end

  def triangle_inequality?
    a + b > c && a + c > b && b + c > a
  end

  def check_triangle
    raise TriangleError unless side_greater_than_zero? && triangle_inequality?
  end

  class TriangleError < StandardError
  end
end
