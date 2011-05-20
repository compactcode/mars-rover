class Rover
  
  attr_accessor :coordinates, :direction
  
  def initialize(bounds, coordinates, direction)
    @bounds, @coordinates, @direction = [bounds, coordinates, direction]
  end
  
  def move
    target_coordinates = translate(@coordinates, @direction.to_coordinates)
    @coordinates = target_coordinates if within_bounds(target_coordinates)
    self
  end
  
  def execute_commands(commands)
    commands.chars.each do |command|
      case command
      when "L"
        @direction.rotate_left
      when "R"
        @direction.rotate_right
      when "M"
        move
      end
    end
    self
  end
  
  protected
  
    def translate(first, second)
      first.zip(second).map { |axis| axis.reduce(:+) }
    end
    
    def within_bounds(coordinates)
      coordinates[0] <= @bounds[0] && coordinates[1] <= @bounds[1]
    end
  
end