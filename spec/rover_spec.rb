require "spec_helper"

describe Rover do
  
  describe "#rotate_left" do
    it "should change the current direction of the rover" do
      Rover.new([1, 1], Direction::North).rotate_left.direction.should == Direction::West
    end
  end
  
  describe "#rotate_right" do
    it "should change the current direction of the rover" do
      Rover.new([1, 1], Direction::North).rotate_right.direction.should == Direction::East
    end
  end
  
  describe "#move" do
    it "should move the rover in the current direction" do
      Rover.new([1, 1], Direction::North).move.coordinates.should == [1, 2]
    end
  end
  
  it "should allow multiple commands to be issued" do
    Rover.new([1, 1], Direction::North).rotate_left.rotate_right.move.coordinates.should == [1, 2]
  end
  
end