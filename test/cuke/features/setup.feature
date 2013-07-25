Feature: Managing Trips
  In order to start my camping planning
  As a Camping user
  I want to be able to manage my Trips

Background
  Given I am a logged-in Camping user
  And I'm on the Trips page

Scenario: Creating a new Trip
  When I create a new Trip titled "Grand Lake Trip"
  Then I should see 1 trip with the title "Grand Lake Trip"
  And my account should have 1 trip with the title "Grand Lake Trip"
