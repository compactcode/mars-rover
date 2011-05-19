@announce 
Feature:
  In order to explore the terrain on a Mars plateau
  As a NASA engineer
  I want to land my rovers on the plateau and issue commands to move them about

  Scenario: Access the rover console
    When I run `ruby explore.rb`
    Then the output should contain "Welcome, what is the size of your target plateau?"
    