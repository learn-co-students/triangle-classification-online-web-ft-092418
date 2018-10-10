require "pry"
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    self.side1 = side1
    self.side2 = side2
    self.side3 = side3
  end

  def kind
    #binding.pry
    if side1 * side2 * side3 > 0 && (side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1)
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side1 == side3 || side2 ==  side3
        :isosceles
      else
        :scalene
      end
    else
      #begin
        raise TriangleError
    #  rescue TriangleError => error
    #    puts error.message
    #  end
    end

  end

  class TriangleError < StandardError
    def message
      puts "Incorrect dimensions."
    end
  end
end
