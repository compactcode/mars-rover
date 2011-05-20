class Rover
  
  attr_accessor :coordinate, :direction
  
  def initialize(bounds, coordinate, direction)
    @bounds, @coordinate, @direction = [Coordinate.new(bounds), Coordinate.new(coordinate), Direction.new(direction)]
  end
  
  def execute(commands)
    commands.chars.each do |command|
      case command
      when "L"
        @direction.rotate_left
      when "R"
        @direction.rotate_right
      when "M"
        @coordinate.translate(@direction.to_coordinate)
        @coordinate.ensure_within(@bounds)
      end
    end
    self
  end
  
  def to_s
    [@coordinate, @direction].join(" ")
  end
  
end