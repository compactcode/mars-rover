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
  
  def move
    target_coordinates = translate(@coordinates, Direction.to_coordinates(direction))
    @coordinates = target_coordinates if @plateau.contains_coordinates(target_coordinates)
    self
  end
  
  def execute_commands(commands)
    commands.chars.each do |command|
      case command
      when "L"
        rotate_left
      when "R"
        rotate_right
      when "M"
        move
      end
    end
    self
  end
  
  protected
  
    def rotate(rotation)
      @direction = Direction.rotate(@direction, rotation)
      self    
    end
  
    def translate(first, second)
      first.zip(second).map { |axis| axis.reduce(:+) }
    end
  
end