class Triangle
  # write code here
  attr_reader :length, :width, :height

  def initialize(length,width,height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if length == width && width == height
      return :equilateral
    elsif length == width || width == height|| length == height
      return :equilateral
    else
      return :scalene
    end
  end


  def validate_triangle
    real_triangle =  [(length + width > height), (length + height > width), (width + height > length)]
      [length, width, height].each do |side|
        real_triangle << false if side <= 0 
      raise TriangleError if real_triangle.include?(false)
      end
  end
      
  class TriangleError < StandardError
    def message
      "Triangle inequality failed"
    end
  end

end