Feature: Core Domain

  # things a Camping user would do

  Scenario: User creates a new Trip
    When I submit a new Trip with title 'Grand Lake Camping'
    Then my trips list should include a trip
    And that trip should have the title 'Grand Lake Camping'

  Scenario: User view details about a Campground
  Scenario: User reserves a Campsite as part of a Trip
  Scenario: User records a Journal Entry about a Trip

