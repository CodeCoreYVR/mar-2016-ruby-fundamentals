class Rectangle
  attr_accessor :width, :height

  def initialize(width = 0, height = 0)
    @width  = width
    @height = height
  end

  def area
    # @width * @height
    width * height
  end

end
