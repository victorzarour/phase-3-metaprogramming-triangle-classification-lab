require 'pry'
class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end 

  def kind 
    valid_triangle
    if one == two && one == three
      :equilateral
    elsif one == two || two == three || one == three
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle
   raise TriangleError unless triangle_inequality && side_length
  end

  def side_length
    one > 0 && two > 0 && three > 0
  end

  def triangle_inequality
    one + two > three && one + three > two && two + three > one
  end
  class TriangleError < StandardError
  end
end
