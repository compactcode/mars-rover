class Interpreter
  def create_plateau(input)
    Plateau.new(extract_point(input))
  end
  def create_rover(input)
    Rover.new(extract_point(input), input.split.last)
  end
  def extract_point(input)
    [input.split[0].to_i, input.split[1].to_i]
  end
end