class Trip
  # is_a_value_object

  attr_reader :title
  attr_reader :user

  def initialize(args)
    @title = args[:title]
    @user = args[:user]
  end

end