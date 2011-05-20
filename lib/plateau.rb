class Plateau
  
  def initialize(bounds)
    @bounds = bounds
  end
  
  def contains_coordinates(coordinates)
    coordinates[0] < @bounds[0] && coordinates[1] < @bounds[1]
  end
  
end