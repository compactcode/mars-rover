@announce
Feature:
  In order to explore the terrain on a Mars plateau
  As a NASA engineer
  I want to land my rovers on the plateau and issue commands to move them about
    
  Scenario: Land an move a rover
    Given a file named "input.txt" with: 
    """
    2 2
    1 1 N
    M
    """
    When I run `explore.rb`
    Then the output should contain:
    """
    1 2 N
    """