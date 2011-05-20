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
  
end