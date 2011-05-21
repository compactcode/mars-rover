class Coordinate
  
  attr_accessor :x, :y
  
  def initialize(coordinate)
    @x, @y = [coordinate.split[0].to_i, coordinate.split[1].to_i]
  end
  
  def translate(other)
    @x += other.first
    @y += other.last
  end
  
  def ensure_within(upper)
    @x = [[@x, upper.x].min, 0].max
    @y = [[@y, upper.y].min, 0].max
  end
  
  def to_s
    [@x, @y].join(" ")
  end
  
end