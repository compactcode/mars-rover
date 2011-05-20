class Coordinate
  
  Translations = {
    Direction::North => [0,  1],
    Direction::East  => [1,  0],
    Direction::South => [0, -1],
    Direction::West  => [-1, 0]
  }
  
  attr_accessor :x, :y
  
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def translate(direction)
    @x += Translations[direction][0]
    @y += Translations[direction][1]
    self
  end
  
  def ==(other)
    @x == other.x && @y == other.y
  end
  
end