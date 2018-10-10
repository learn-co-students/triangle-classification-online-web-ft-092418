class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1.to_f
    @side2 = side2.to_f
    @side3 = side3.to_f
  end

  def kind 
    if !isValid?
      raise TriangleError
      return
    elsif isEqui?
      return :equilateral
    elsif isScal?
      return :scalene
    else
      return :isosceles   
    end
  end

  def isValid?
    return false if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
    return false if (@side1 + @side2) < @side3 || (@side1 + @side3) < @side2 || (@side3 + @side2) < @side1
    return false if (@side1 == @side3) && (@side2 > @side3)
    return false if (@side1 == @side2) && (@side3 > @side2)
    
    return true
  end

  def isEqui?
    if @side1 == @side2 && @side1 == @side3 && @side2 == @side3
      true
    else false
    end
  end 

  def isScal?
    if @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      true
    else false
    end
  end

  class TriangleError < StandardError
    def message
      "ERROR - not a valid Triangle \n"
    end
  end
end
