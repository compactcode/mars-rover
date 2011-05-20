class Direction
  
  North = 0.0 * Math::PI
  East  = 0.5 * Math::PI
  South = 1.0 * Math::PI
  West  = 1.5 * Math::PI
  
  Mapping = {
    North => "N",
    East  => "E",
    South => "S",
    West  => "W"
  }
  
  class Rotation
    Left  = 1.5 * Math::PI
    Right = 0.5 * Math::PI
  end  
  
  def self.parse(input)
    Mapping.invert[input]
  end
  
  def self.print(direction)
    Mapping[direction]
  end
  
  def self.rotate(direction, rotation)
    (direction + rotation) % (2.0 * Math::PI)
  end
  
  def self.to_coordinates(direction)
    [Math.sin(direction).to_i, Math.cos(direction).to_i]
  end
    
end