class Triangle
attr_accessor :x1, :x2 , :x3 , :equilateral , :isosceles , :scalene

def initialize (x1, x2, x3)
  @x1 = x1
  @x2 = x2
  @x3 = x3
  
end

def valid?
  @x1 + @x2 > @x3 && @x2 + @x3 > @x1 && @x1 + @x3 > @x2 && @x1 >0 && @x2 > 0 && @x3 > 0
end

def kind 
  
  if self.valid?
    if @x1==@x2 && @x1==@x3
      :equilateral
    elsif @x1 == @x2 || @x2 == @x3 || @x1 == @x3
      :isosceles
    else
      :scalene
      
    end
    
  else
  raise TriangleError

  end
end

class TriangleError < StandardError
    
      end


end
