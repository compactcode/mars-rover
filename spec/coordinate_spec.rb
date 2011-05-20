require "spec_helper"

describe Coordinate do
  
  describe "#translate" do
    it "should be chainable" do
      Coordinate.new(1,1).translate(Direction::West).translate(Direction::East).should == Coordinate.new(1, 1)
    end
  end
  
end