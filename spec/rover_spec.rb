require "spec_helper"

describe Rover do
  
  describe "#rotate_left" do
    it "should allow rotation to the left" do
      Rover.new(Coordinate.new(1, 1), Direction::North).rotate_left.direction.should == Direction::West
    end
  end
  
  describe "#rotate_right" do
    it "should allow rotation to the right" do
      Rover.new(Coordinate.new(1, 1), Direction::North).rotate_right.direction.should == Direction::East
    end
  end
  
end