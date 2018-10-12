
class Triangle

  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    error1 = @a = 0 || @b = 0 || @c = 0  
    error2 = @a + @b < @c || @b + @c < @a || @a + @c < @b 
    error3 = @a.negative? || @b.negative? || @c.negative?

    if error1 || error2 || error3
      begin
        raise TriangleError
      end 
    end 
    if @a == @b && @b == @c
      :equilateral
    end 
    if @a == @b || @a == @c || @b == @c
      :isosceles 
    end 
    if @a != @b && @b != @c 
      :scalene
    #else 
      #:scalene
    end     
  end 

  class TriangleError < StandardError
  end 
end
