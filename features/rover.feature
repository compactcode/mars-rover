@announce
Feature:
  In order to explore the terrain on a Mars plateau
  As a NASA engineer
  I want to land my rovers on the plateau and issue commands to move them about
    
  Scenario: Land and explore with a single rover
    Given a file named "input.txt" with: 
    """
    5 5
    1 2 N
    LMLMLMLMM
    """
    When I run `explore.rb`
    Then the output should contain:
    """
    1 3 N
    """
    
  Scenario: Land and explore with multiple rovers
    Given a file named "input.txt" with: 
    """
    5 5
    1 2 N
    LMLMLMLMM
    3 3 E
    MMRMMRMRRM
    """
    When I run `explore.rb`
    Then the output should contain:
    """
    1 3 N
    5 1 E
    """
