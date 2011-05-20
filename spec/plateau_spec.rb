require "spec_helper"

describe Plateau do
  
  describe "#contains_coordinates" do
    it "should return true for coordinates within the plateau" do
      Plateau.new([2, 2]).contains_coordinates([1, 1]).should == true
    end
    it "should return false for x coordinate outside the plateau" do
      Plateau.new([2, 2]).contains_coordinates([3, 1]).should == false
    end
    it "should return false for y coordinate outside the plateau" do
      Plateau.new([2, 2]).contains_coordinates([1, 3]).should == false
    end
  end
  
end
