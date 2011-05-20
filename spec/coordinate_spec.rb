require "spec_helper"

describe Coordinate do
  
  describe "#translate" do
    it "should allow translation to the north" do
      Coordinate.new(1,1).translate(Direction::North).should == Coordinate.new(1, 2)
    end
    it "should allow translation to the east" do
      Coordinate.new(1,1).translate(Direction::East).should == Coordinate.new(2, 1)
    end
    it "should allow translation to the south" do
      Coordinate.new(1,1).translate(Direction::South).should == Coordinate.new(1, 0)
    end
    it "should allow translation to the west" do
      Coordinate.new(1,1).translate(Direction::West).should == Coordinate.new(0, 1)
    end
  end
  
end