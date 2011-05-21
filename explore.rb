#!/usr/bin/env ruby

require File.join(File.dirname(__FILE__), "lib/direction")
require File.join(File.dirname(__FILE__), "lib/coordinate")
require File.join(File.dirname(__FILE__), "lib/rover")

infile = File.new("input.txt", "r")

bounds = infile.gets

while (line = infile.gets)
  puts Rover.new(bounds, line, line.split.last).execute(infile.gets)  
end
