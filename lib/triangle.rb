class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c
  end
  
  def valid_triangle?
    (@a <= 0 || @b <= 0 || @c <= 0) || (@a + @b <= @c) || (@a + @c <= @b) || (@b + @c <= @a)
  end
  
  def kind 
    if valid_triangle?
      raise TriangleError
    elsif @a == @b && @b == @c  
      :equilateral 
    elsif @a == @b || @a == @c || @c == @b 
      :isosceles 
    else
      :scalene
  end
end
  
  class TriangleError < StandardError
    def error_message 
      "Sorry, but you've encountered a triangle error! Try again."
    end
  end
end
