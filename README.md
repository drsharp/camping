# Camping
### A green-field playground app for managing camping trips
---

### Idea
Use this repository to build a fairly simple app but with intention around
practicing outside-in BDD/TDD and with using the cutting edge tools.

### App
I love to camp! We have a pop-up trailer that we take on weekends during the
summer. A good friend of mine ([Paul Rayner](https://github.com/paulrayner))
suggested that I build an app to manage/support my love of camping. That will
give me a domain that I'm interested in, an app that could actually be useful,
and a greenfield project to play around with technologies and with best
practices.

### Technologies
These are the technologies I'm planning to use:

* Cucumber => for pure outside-in BDD of "customer" features
* Rspec => for TDD: isolation/unit/functional/integration tests
* DDD => Practice building the domain first via hexagonal architecture
* MongoDB => use a Document Store
* Rails 4 => Rails for the front end
* Ember/Angular/? => Use a JS framework
* Celluloid-IO => processing agent
* Foundattion => UI framework

These are some technology areas I want to explore:
* Logging/Analytics
* 3rd Party services like SendGrid
* Newer gems
* Newer testing tools


### Feature List
Some features that I know I want at a high level (these will turn into Cucumber features eventually)

* Campgrounds => managing campground details
* Camper/equipment => managing the tent/RV/tools
* Camping Trips => managing trips, repeat trips
* Reservations/Reminders => hooking into ReserveAmerica
* Notes/Comments/Reviews => managing history of trips
* Multimedia => managing pictures: RV, campground, trips, etc.

### Project Goals:
Because this is a usable project but also a greenfield, playground, there are some driving
goals for how I want to approach this.

- commit often so I can go back and follow my thought processes
- always green unless there's a good reason
- start with a high level general sense: rough object model, basic UIs
- build a "walking skeleton" so I have the pieces in place: domain, rails, mongo
- deploy to heroku
- run an Ubuntu VM as execution stack (Paul's idea): vagrant or Docker

### Domain Objects

I'm still new to real DDD so the concept of an Aggregate is not quite sinking
in yet. However, here are some of the basic domain objects (entities, )
The aggregate roots are:





   * Campground: represents details about a specific campground

   * Camp Site: within a campground
   * Camper: like a User but one who camps
   * Gear: probably need better term. But like what kind of RV/tent/etc. you have
   * Reservation: a Camper choosing a Camp Site at a Campground for a given date range
   * Trip: Actually going camping. It has a reservation, and Gear and a Camper
   * Journal: a collection of Entries about a Trip
   * Entry: a blog-like write-up about a trip


What isn't a value object? Something with behavior. Let's think outside-in. Do some design.

As a Camper, I want to view Campgrounds
As a Camper, I want to browse available Campsites within a Campground for a weekend
As a Camper, I want to create a Reservation
As a Camper, I want to change the Reservation into a Trip

Actually, I don't think I need a reservation from this level. I create a Trip and it has various states: pending, reserved, paid, camped, skipped.






I want to start with enough plumbing to get some Cucumber going, then some RSpec. 

Strategy:
1. do some very basic structure design (back of napkin-like). Find the boundaries.
2. set up Gemfile with minimum to get started: cucumber, rspec, pry
2. 


