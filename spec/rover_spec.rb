require "spec_helper"

describe Rover do
  
  describe "#move" do
    it "should increment y coord when facing north" do
      Rover.new(1, 1, Direction::North).move.location.should == [1, 2]
    end
    it "should decrement y coord when facing south" do
      Rover.new(1, 1, Direction::South).move.location.should == [1, 0]
    end
    it "should increment x coord when facing east" do
      Rover.new(1, 1, Direction::East).move.location.should == [2, 1]
    end
    it "should decrement x coord when facing west" do
      Rover.new(1, 1, Direction::West).move.location.should == [0, 1]
    end
  end
  
end