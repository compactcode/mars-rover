require "direction"

class Rover
  
  attr_accessor :coordinates, :direction
  
  def initialize(plateau, coordinates, direction)
    @plateau, @coordinates, @direction = [plateau, coordinates, direction]
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
    target_coordinates = translate(@coordinates, Direction.to_coordinates(direction))
    @coordinates = target_coordinates if @plateau.contains_coordinates(target_coordinates)
    self
  end
  
  protected
  
    def translate(first, second)
      first.zip(second).map { |axis| axis.reduce(:+) }
    end
  
end