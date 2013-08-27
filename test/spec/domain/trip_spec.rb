require 'trip'

describe Trip do
  it "should have a title" do
    Trip.new(title:'my title').title.should == 'my title'
  end

  it "belongs to a user" do
    me = double(:user)
    Trip.new(title:'my title', user:me).user.should == me
  end

end