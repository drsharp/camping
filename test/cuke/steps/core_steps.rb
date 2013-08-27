require 'trip'

When(/^I submit a new Trip with title '(.*)'$/) do |trip_title|
  @my_trips = []
  @my_trips << Trip.new(title:trip_title)
end

Then(/^my trips list should include a trip$/) do
  @my_trips.first.should_not be_nil
end

Then(/^that trip should have the title '(.*)'$/) do |trip_title|
  @my_trips.first.title.should == trip_title
end
