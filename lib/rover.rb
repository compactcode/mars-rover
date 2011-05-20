class Rover
  attr_accessor :facing, :location
  def initialize(location, facing)
    @facing = facing
    @location = location
  end
end