require File.join(File.dirname(__FILE__), "lib/direction")
require File.join(File.dirname(__FILE__), "lib/rover")

def parse_coordinates(coordinates)
  [coordinates.split[0].to_i, coordinates.split[1].to_i]
end

def parse_rover(bounds, rover)
  Rover.new(bounds, parse_coordinates(rover), Direction.parse(rover.split.last))
end

infile = File.new("input.txt", "r")
bounds = parse_coordinates(infile.gets)

while (line = infile.gets)
  rover = parse_rover(bounds, line).execute_commands(infile.gets)  
  puts "#{rover.coordinates.join(" ")} #{Direction.print(rover.direction)}"
end
