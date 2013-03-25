require 'test_helper'
require 'factories/user_factory'

class UsersControllerTest < ActionController::TestCase

  test "should get new" do
    get :new
    assert_response :success
  end

  test "passwords match" do
    post :create, {:user => {:name => "Patrick", :email => "me@there.com", :password => "blah", :password_confirmation => "blahblah"}}
    assert_template :new
    assert User.count == 0
  end

  test "creates user in database" do
    post :create, {:user => {:name => "Patrick", :email => "me@there.com", :password => "blah", :password_confirmation => "blah"}}
    assert_redirected_to root_url
    assert User.count == 1
  end


end
