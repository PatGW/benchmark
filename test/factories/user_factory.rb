class UserFactory

  def self.user_without_name
    user = User.new
    user.email = "someone@somwhere.com"
    user.password = "blah"
    user
  end

  def self.user_without_email
    user = User.new
    user.name = "Patrick"
    user.password = "blah"
    user
  end

  def self.user_without_password
    user = User.new
    user.name = "Patrick"
    user.email = "someone@somwhere.com"
    user
  end

end