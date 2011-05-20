class Direction
  
  Mapping = {
    "N" => 0.0 * Math::PI,
    "E" => 0.5 * Math::PI,
    "S" => 1.0 * Math::PI,
    "W" => 1.5 * Math::PI
  }

  def initialize(direction)
    @radians = Mapping[direction]
  end
  
  def rotate_left
    rotate(1.5 * Math::PI)
  end

  def rotate_right
    rotate(0.5 * Math::PI)
  end
  
  def to_coordinate
    [Math.sin(@radians).to_i, Math.cos(@radians).to_i]
  end
  
  def to_s
    Mapping.invert[@radians]
  end
  
  protected
  
    def rotate(rotation)
      @radians = (@radians + rotation) % (2.0 * Math::PI)
      self
    end
    
end