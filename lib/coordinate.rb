class Coordinate
  
  attr_accessor :value
  
  def initialize(x, y)
    @value = [x, y]
  end
  
  def translate(direction)
    @value = @value.zip(Direction.to_coordinate_translation(direction)).map{ |axis| axis.reduce(:+) }
    self
  end
  
  def ==(other)
    @value == other.value
  end
  
end