# How To Contribute

***

Here are notes on how to help out with this Camping app.

For now, the best way:

- [Fork the repo](https://github.com/drsharp/camping.git)
- Work on it a bit
- Maybe look into the Issues list and tackle an issue or two
- Submit a Pull Request
- Enjoy!

***

### Until the Github Issues are Populated...

Here are some wasy to contribute

1. Flesh out some of the value objects: Campground, Campsite, Date Range, etc.
2. Explore the aggregates and what they encapsulate: Trip, Reservation, Summer Schedule
3. Bootstrap some of the plumbing: MongoDB, Rails, Foundation, a JS framework
4. Work on some of the data entry parts (not as interesting DDD-wise)
6. Write some features! Be creative and think about what might be interesting. Here's some...

### Some Features to BDD

Here are a few features that I know should be part of the Camping app. Use these as some starting Cucumber or Rspec features.

#### As a camping user, in order to manage my schedule, I should be able to add a site to my summer schedule
#### As a camping user, in order to manage my schedule, I should be able to view my summer schedule, showing trips planned or reserved
#### As a camping user, in order to complete reservations, I should be able to generate a pick list of reservations
#### As a camping user, in order to manage my schedule, I should be able to change a trip on the summer schedule
#### As a camping user, in order to remember my trips, I should be able to create a journal entry for a past trip
#### As a camping user, in order to remember my trips, I should be able to add additional information to a journal entry for a past trip
#### As a camping user, in order to remember my trips, I should be able to view a list of my journal entries

And some other things that could be further described:

- the idea of building up future trips as reservations
- interesting functionality around a Summer Schedule: a collection of future trips
- managing that schedule when campsites/campgrounds aren't available
- coordinating a schedule with another camping user
- reminders of various kinds: reservation reminders, packing reminders, camping with others' reminders, etc.
- managing different kinds of data: camping gear, reviews, other amenities nearby, campgrounds, campsites, camp areas
- Social media aspects: liking/ratings, camping 'buddies', followers, etc.
- API integrations: being able to turn a Camping reservation into a reserveamerica.com reservation


