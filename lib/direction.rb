module Direction
  
  North = 0
  East  = 1
  South = 2
  West  = 3
  
  module Rotation
    Left  = -1
    Right = 1
  end
  
  def self.rotate(direction, rotation)
    (direction + rotation) % 4
  end
  
end
