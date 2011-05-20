require "spec_helper"

describe Direction do
  
  describe "#parse" do
    it "should convert 'N' to north" do
      Direction.new("N").to_s.should == "N"
    end
    it "should convert 'E' to east" do
      Direction.new("E").to_s.should == "E"
    end
    it "should convert 'S' to south" do
      Direction.new("S").to_s.should == "S"
    end
    it "should convert 'W' to west" do
      Direction.new("W").to_s.should == "W"
    end
  end
  
  describe "#rotate" do
    describe "north" do
      it "should change to west when rotating left" do
        Direction.new("N").rotate_left.to_s.should == "W"
      end
      it "should change to east when rotating right" do
        Direction.new("N").rotate_right.to_s.should == "E"
      end
    end
    describe "east" do
      it "should change to north when rotating left" do
        Direction.new("E").rotate_left.to_s.should == "N"
      end
      it "should change to south when rotating right" do
        Direction.new("E").rotate_right.to_s.should == "S"
      end
    end
    describe "south" do
      it "should change to west when rotating left" do
        Direction.new("S").rotate_left.to_s.should == "E"
      end
      it "should change to south when rotating right" do
        Direction.new("S").rotate_right.to_s.should == "W"
      end
    end
    describe "west" do
      it "should change to south when rotating left" do
        Direction.new("W").rotate_left.to_s.should == "S"
      end
      it "should change to north when rotating right" do
        Direction.new("W").rotate_right.to_s.should == "N"
      end
    end
  end
  
  describe "#to_coordinate" do
    it "should create a translation for moving north" do
      Direction.new("N").to_coordinate.should == [0, 1]
    end
    it "should create a translation for moving east" do
      Direction.new("E").to_coordinate.should == [1, 0]
    end
    it "should create a translation for moving south" do
      Direction.new("S").to_coordinate.should == [0, -1]
    end
    it "should create a translation for moving west" do
      Direction.new("W").to_coordinate.should == [-1, 0]
    end
  end
  
end