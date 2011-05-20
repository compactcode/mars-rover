require "spec_helper"

describe Direction do
  
  describe "#rotate" do
    
    describe "north" do
      it "should change to west when rotating left" do
        Direction.rotate(Direction::North, Direction::Rotation::Left).should == Direction::West
      end
      it "should change to east when rotating right" do
        Direction.rotate(Direction::North, Direction::Rotation::Right).should == Direction::East
      end
    end
    
    describe "east" do
      it "should change to north when rotating left" do
        Direction.rotate(Direction::East, Direction::Rotation::Left).should == Direction::North
      end
      it "should change to south when rotating right" do
        Direction.rotate(Direction::East, Direction::Rotation::Right).should == Direction::South
      end
    end
    
    describe "south" do
      it "should change to west when rotating left" do
        Direction.rotate(Direction::South, Direction::Rotation::Left).should == Direction::East
      end
      it "should change to south when rotating right" do
        Direction.rotate(Direction::South, Direction::Rotation::Right).should == Direction::West
      end
    end
    
    describe "west" do
      it "should change to south when rotating left" do
        Direction.rotate(Direction::West, Direction::Rotation::Left).should == Direction::South
      end
      it "should change to north when rotating right" do
        Direction.rotate(Direction::West, Direction::Rotation::Right).should == Direction::North
      end
    end
    
  end
  
  describe "#to_coordinates" do
    it "should create a translation for moving north" do
      Direction.to_coordinates(Direction::North).should == [0, 1]
    end
    it "should create a translation for moving east" do
      Direction.to_coordinates(Direction::East).should == [1, 0]
    end
    it "should create a translation for moving south" do
      Direction.to_coordinates(Direction::South).should == [0, -1]
    end
    it "should create a translation for moving west" do
      Direction.to_coordinates(Direction::West).should == [-1, 0]
    end
  end
  
end