require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    self.side1 = side1
    self.side2 = side2
    self.side3 = side3
  end
  
  
  def kind 
    if real_triangle?
      if self.side1 == self.side2 && self.side1 == self.side3
        :equilateral
      elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
        :isosceles
      else
        :scalene
      end
    else
      # begin
      raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
      # end
    end
  end
  
  def real_triangle?

    if self.side1 == 0 || self.side2 == 0 || self.side3 == 0
      puts "Fail1 #{self.side1}, #{self.side2}, #{self.side3}"
        return false
    elsif self.side1 + self.side2 <= self.side3 || self.side2 + self.side3 <= self.side1 || self.side1 + self.side3 <= self.side2
    puts "Fail2 #{self.side1}, #{self.side2}, #{self.side3}"
        return false
    else 
      return true
    end
  end
  
  class TriangleError < StandardError
    def message
      "not a real triangle. Try Again."
    end
  end
end
