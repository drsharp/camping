# Freeform thoughts on Camping

This document is a free-form notes compliation of my thoughts and ideas as I've worked to flesh out this camping app.

### Notes/Thoughts

#### What isn't a value object? Let's think outside-in. Do some design.

* As a Camper, I want to view Campgrounds
* As a Camper, I want to browse available Campsites within a Campground for a weekend
* As a Camper, I want to create a Reservation
* As a Camper, I want to change the Reservation into a Trip

A Reservation is like a Trip, but has some differences. A Reservation is in the future. There can be a corresponding Trip after it happens, but the Trip could also not happen (the Reservation would stay but be marked as 'cancelled' or something like that)


Behavior is about creating/managing data, and changing state:

- create a Trip (starting as 'pending')
- change a Trip by making a reservation
- update a Trip by going camping!
- close out a Trip by making a write-up on it.

So some behavior objects might be:

- A TripMaker class that knows how to take data input and create a Trip value object
- A ReservationMaker class that knows how to turn a Trip value object into a Trip with Reservation value object

### Possible Starting Cucumber Features

Just fleshing out ideas...

* As a Camper, I want to create a Trip
* I want to reserve a campsite at a campground (assumes campground, campsite and trip)
* I want to list available campsites at a campground
* I want to list campgrounds within 30 miles of me

I think those could become Cucumber stories.

So let's start with the bare minimum to get those going:

1. RVM and Gemset x
2. Bundler x
3. Cucumber x
4. RSpec x
5. Set up folders: x
  - app/domain (where all domain objects will go)
  - app/persistence (persistence)
  - app/views (view code)
  - app/controllers (controller code)
  - app/ports? (ports/adapters code?)

  - test/spec/domain (unit tests for domain classes)
  - test/spec/functional (functional tests)
  - test/spec/integration (integration tests)
  - test/spec/support (support stuff)
  - test/cuke/features (feature files for cucumber)
  - test/cuke/steps (step definitions)
  - test/cuke/support (support stuff)
  
  - config/ (eventually rails configs)
  - log/ (eventually logging)
  - lib/ (generic tools not really part of the app but not gems)
  - tmp/ (in case I need tmp for pids and such)

  - Skip any other stuff: DB/environments/etc.

5. Set up basic feature to pass with pending steps x
6. Set up basic rspec to pass with no specs x

Setup done:

$ rspec
Run options: include {:focus=>true}

All examples were filtered out; ignoring {:focus=>true}

Trip
  should be true

Finished in 0.00066 seconds
1 example, 0 failures

Randomized with seed 55424

$ cucumber
Using the default and html_report profiles...


0 scenarios
0 steps
0m0.000s

## On To The first Feature!

# Rough Notes

These are the unorganized notes as I talked through things with Paul Rayner.


    Feature: Core Domain

      # things a Camping user would do

      Scenario: User creates a new Trip
        When I submit a new Trip with title 'Grand Lake Camping'
        Then my trips list should include a trip
        And that trip should have the title 'Grand Lake Camping'

      Scenario: User view details about a Campground
      Scenario: User reserves a Campsite as part of a Trip
      Scenario: User records a Journal Entry about a Trip


### Finding camping sites via distance

* specify alocation, maybe by a street address.

* I want to camp within 100 miles of 187 washington ave, golden co

* I want to camp within 10 miles of Grand Lake, CO
* I want to camp within 25 miles of lat:123, Lng:234

* Drive time? Distance? Or radius.  Probably distance.
* I want to camp within 60 miles drive from Golden, CO.

### Finding camping sites via area

* I want to camp in XYZ National Forest.
* Interesting parts:

### My big idea

* 1. Journal on prior camping trips:
* - Notes about the trip: photos, gear, time, weather.
* - notes about the campground
* - notes about the trip to/from campround
* - notes about the camp site (12)
* - notes about alternate camp sites (13, 17, 21)
* - notes about nearby trails
* - notes about nearby facilities (restaurants, activites, towns, etc)

### Some other ideas of how to use Camping

* notifications of rebooking. "Notifiy me on X date to remember to book"... rolling booking window specification

* 2. Research future camping trips
* - when, where, what to pack, etc.


* 3. Eventually: rebook a prior as a future camping trip.
*

### How to start

* pick a campground and BDD/TDD it based on that campground.

* Assumption: there is already a campground and maybe I"ve already visited it?

* BDD: journal around it?

* consumption of the journal data. What does that look like?

### The idea of a schedule

* managing a schedule of tentative camping trips.
* Year at a glance... or summer at a glance

* long run: turn a tentative trip into an actual booked trip/reservation. <= involve an API to reserveamerica.com
* booking pick-list to make it easy to do RA.com bookings:
* - this is the whole summer laid out. Then, have a list of:
* campground, site, dates

* reminders pegged to them: 5 days before, reminder X, 1 day before reminder Y: X: don't forget to check the weather. Y: remmeber your equipment checklist:...


* what-if schedule using the same kinds of dates/weekends as the previous year.

### Schedule management: availability and other ideas


Definining availability: weekends available, dates available.

The business value is: being able to build up a summer camping schedule.
- implies: 

camping with others. App somehow coordinating trips with other people. When are they available? lining up weekends. Communicating with them about adjacent sites. Their preferences as part of ours.


