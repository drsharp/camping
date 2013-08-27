Feature: Journaling about past Camping Trips
  In order to remember details about camping trips
  As a Camping user
  I want to be able to journal about my Trips

Background
  Given I am a logged-in Camping user
  And I'm viewing an existing Trip titled "Grand Lake Trip"

Scenario: Entering a New Trip Journal
  When I enter the notes 'The trip was great!' into the Trip Journal
  Then I should see 
  And my account should have 1 trip with the title "Grand Lake Trip"
