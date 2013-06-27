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
- run an Ubuntu VM as execution stack (Paul's idea)
