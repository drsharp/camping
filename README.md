# Camping

### A green-field DDD playground app for managing camping trips

***

*To dive in and contribute, see [How To Contribute](CONTRIBUTE.md).*

### Business Idea
The camping app provides a way for camping enthusiasts to manage information about their camping trips. This includes data gathering from past trips, planning future trips, sharing trip and site info with other enthusiasts and integration with booking/reservations systems.

### Coding Idea
Use this playground app to build a fairly simple web app (at least initially) with the express intention around practicing outside-in BDD/TDD, domain-driven design (DDD), and with using some newer, cutting edge tools.

### App Rationale
I love to camp! We have a pop-up trailer that we take on weekends during the summer. In 2013, for example, we camped 29 nights! 

A good friend of mine ([Paul Rayner](http://www.thepaulrayner.com/)) suggested that I build an app to manage/support my love of camping. That will give me a domain that I'm interested in, an app that could actually be useful, and a greenfield project to play around with technologies and with best practices.

### Technologies
These are the technologies I'm planning to use:

- Cucumber => for pure outside-in BDD of "customer" features
- Rspec => for TDD: isolation/unit/functional/integration tests
- DDD => Practice building the domain first via hexagonal architecture
- MongoDB => use a Document Store (for Aggregates)
- Rails 4 => Rails for the front end
- Ember/Angular/? => Use a JS framework
- Celluloid-IO => processing agent?
- Foundation => UI framework (since I already know TB)

These are some technology areas I want to explore:

- Logging/Analytics
- 3rd Party services:
    - SendGrid
    - Airbrake/other exception tools
    - ??
- Newer gems
- Newer testing tools/patterns:
    - rspec's test spies
    - Jim Wirich's Given/When/Then
    - Non-standard setup for rspec/cucumber (just because!)

### Project and Workflow Goals:
Because this is a usable project but also a greenfield playground, there are some driving goals for how I want to approach this.

- **commit often** so I can go back and follow my thought processes
- **always green** (unless there's a good, specific reason)
- **start small** so that there is usable functionality early.
- **'walking skeleton'** built to start so that all the plumbing is in place: domain, rails, mongo
- **leverage heroku** so I can get more heroku experience
- **encapsulate** the environment via vagrant or docker

### Feature List
Some features that I know I want at a high level (these will turn into Cucumber features eventually)

- Ability to build up a future camping season schedule
- Ability to turn the schedule into a "pick list" for easy reservation completion
- Ability to research campground and sites
    - from one's personal journal of former trips
    - from other's journal of trips
    - from other information (entered or scraped)
- Ability to enter data about campgrounds and campsites
- Ability to enter data about camping areas: restaurants, activities, shops, etc.
- Ability to be reminded about trips: packing lists, reservation windows, etc.

### Domain Objects
I'm still new to real DDD so the concept of an Aggregate is not quite sinking
in yet. However, here are some of the basic domain objects (entities, value objects)

#### Likely Value Objects:
- Wilderness/National Forest
- Campground
- Campsite
- Reservation
- Journal Entry (notes)
- Journal Media (photo, audio, video)
- Camping Gear Set
- Camping Person

#### Likely Aggregate Roots:
- Trip *(encapsulates the data necessary to describe a former trip)*
    - 1 or more Camping People
    - 1 or more Camping Gear Sets
    - a Location:
        - Region
        - Campground
        - Campsite
    - a Date Range (start+end)

- Reservation *(encapsulates the data necessary to describe a future trip)*
    - Trip
    - Booking status
    - Notes

- Season Schedule *(encapsulates the data necessary to describe a camping season's schedule)*
    - 1 or more Reservations

### Notes and Brainstorms

Refer to the [The Notes and Brainstorms](NOTES.md) document for free-form thoughts and brainstorming.

Refer to the Issues List for specific tasks/issues that can be tackled.

Thanks, and be sure to let me know of any thoughts, questions, accolades, etc.!

*-Dan*