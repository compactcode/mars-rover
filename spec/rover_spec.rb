require "spec_helper"

describe Rover do
  
  describe "#rotate_left" do
    it "should change the current direction of the rover" do
      create_rover.rotate_left.direction.should == Direction::West
    end
  end
  
  describe "#rotate_right" do
    it "should change the current direction of the rover" do
      create_rover.rotate_right.direction.should == Direction::East
    end
  end
  
  describe "#move" do
    it "should move the rover in the current direction" do
      create_rover.move.coordinates.should == [1, 2]
    end
    it "should move the rover in the current direction to the upper edge" do
      create_rover([4, 4]).move.coordinates.should == [4, 5]
    end
    it "should not move the rover if it is at the edge of the plateau" do
      create_rover([5, 5]).move.coordinates.should == [5, 5]
    end
    it "should not move the rover if it is at the pushing the upper edge of the plateau" do
      create_rover([5, 5]).move.coordinates.should == [5, 5]
    end
    it "should not move the rover if it is at the pushing the outer upper edge of the plateau" do
      create_rover([5, 5]).rotate_right.move.coordinates.should == [5, 5]
    end
  end
  
  describe "#execute_commands" do
    it "should translate the 'L' command into a #rotate_left" do
      create_rover.execute_commands("L").direction.should == Direction::West
    end
    it "should translate the 'R' command into a #rotate_right" do
      create_rover.execute_commands("R").direction.should == Direction::East
    end
    it "should translate the 'M' command into a #move" do
      create_rover.execute_commands("M").coordinates.should == [1, 2]
    end
  end
  
  it "should allow multiple commands to be issued" do
    create_rover.rotate_left.rotate_right.move.coordinates.should == [1, 2]
  end
  
  def create_rover(start_coordinates = [1, 1])
    Rover.new([5, 5], start_coordinates, Direction::North)
  end
  
end