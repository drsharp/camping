# require 'trip'
# Trip-related steps

When(/^I create a new Trip titled "(.*?)"$/) do |title|
  @trip = Trip.new(title)
end

Then(/^I should see (\d+) trip with the title "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Then(/^my account should have (\d+) trip with the title "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
