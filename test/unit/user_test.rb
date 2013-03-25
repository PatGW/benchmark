require 'test_helper'
require 'factories/user_factory'

class UserTest < ActiveSupport::TestCase
  
  test "can't add user without name" do
    user = UserFactory.user_without_name
    assert !user.save, "user without name saved to database"
  end

  test "can't add user without email" do
    user = UserFactory.user_without_email
    assert !user.save, "user without email saved to database"
  end

  test "can't add user without password" do
    user = UserFactory.user_without_password
    assert !user.save, "user without password saved to database"
  end

end
