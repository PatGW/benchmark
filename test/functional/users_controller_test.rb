require 'test_helper'
require 'factories/user_factory'

class UsersControllerTest < ActionController::TestCase
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "test for name present - create new user" do
    user = UserFactory.user_without_name
    post :create, {:user => {:email => user.email, :password => user.password, :confirm_password => user.password}}
    assert_template(:controller => 'users', :action => "new")
  end
end
