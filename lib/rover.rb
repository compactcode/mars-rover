class Rover
  
  attr_accessor :coordinate, :direction
  
  def initialize(coordinate, direction)
    @coordinate, @direction = [coordinate, direction]
  end
  
  def rotate_left
    rotate(Direction::Rotation::Left)
  end
  
  def rotate_right
    rotate(Direction::Rotation::Right)
  end
  
  def rotate(rotation)
    @direction = Direction.rotate(@direction, rotation)
    self    
  end
  
  def move
    @coordinate.translate(@direction)
    self
  end
  
end