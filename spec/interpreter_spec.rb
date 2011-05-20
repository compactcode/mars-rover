require "spec_helper"

describe Interpreter do
  
  describe "#create_plateau" do
    it "should initialize plateau bounds" do
      Interpreter.new.create_plateau("5 5").upper_right.should == [5, 5]
    end
  end
  
  describe "#create_rover" do
    it "should initialize facing direction" do
      Interpreter.new.create_rover("1 2 N").facing.should == Direction::North
    end
    it "should initialize location" do
      Interpreter.new.create_rover("1 2 N").location.should == [1, 2]
    end
  end
  
end