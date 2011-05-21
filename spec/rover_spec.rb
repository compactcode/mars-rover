require "spec_helper"

describe Rover do
  
  describe "#move" do
    it "should move the rover" do
      create_rover.execute("M").coordinate.to_s.should == "1 2"
    end
    it "should move the rove up to the edge of a plateau" do
      create_rover("4 4").execute("M").coordinate.to_s.should == "4 5"
    end
    it "should not move the rover north if it is at the north edge of a plateau" do
      create_rover("5 5").execute("M").coordinate.to_s.should == "5 5"
    end
    it "should not move the rover east if it is at the east edge of a plateau" do
      create_rover("5 5").execute("RM").coordinate.to_s.should == "5 5"
    end
    it "should not move the rover south if it is at the south edge of a plateau" do
      create_rover("0 0").execute("RRMM").coordinate.to_s.should == "0 0"
    end
    it "should not move the rover west if it is at the west edge of a plateau" do
      create_rover("0 0").execute("LMM").coordinate.to_s.should == "0 0"
    end
  end
  
  describe "#execute_commands" do
    it "should translate the 'L' command into a #rotate_left" do
      create_rover.execute("L").direction.to_s.should == "W"
    end
    it "should translate the 'R' command into a #rotate_right" do
      create_rover.execute("R").direction.to_s.should == "E"
    end
    it "should translate the 'M' command into a #move" do
      create_rover.execute("M").coordinate.to_s.should == "1 2"
    end
    it "should translate multiple commands" do
      create_rover.execute("MRM").coordinate.to_s.should == "2 2"
    end
  end
    
  def create_rover(start_coordinate = "1 1")
    Rover.new("5, 5", start_coordinate, "N")
  end
  
end