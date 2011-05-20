class Coordinate
  
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x, @y = [x, y]
  end
  
  def translate(direction)
    @x += Math.sin(direction).to_i
    @y += Math.cos(direction).to_i
    self
  end
  
  def ==(other)
    @x == other.x && @y == other.y
  end
  
end