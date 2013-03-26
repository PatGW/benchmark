require 'test_helper'
require 'factories/user_factory'

class SessionsControllerTest < ActionController::TestCase

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new session" do
    # setting up the scene (optional)
    user = UserFactory.user
    user.save!
    refute session[:user_id]
    # doing the action being tested (mandatory)
    post :create, {:name => user.name, :email => user.email, :password => user.password}
    # checking the result (mandatory)
    assert_equal user.id, session[:user_id]
    assert_redirected_to root_url
  end

  test "cannot login with a wrong password" do
    # setting up the scene (optional)
    user = UserFactory.user
    user.save!
    refute session[:user_id]
    # doing the action being tested (mandatory)
    post :create, {:name => user.name, :email => user.email, :password => "wrong password"}
    # checking the result (mandatory)
    refute session[:user_id]
    assert_template :new # check the syntax
  end

  test "user can log out" do
    user = UserFactory.user
    user.save!
    session[:user_id] = user.id
    assert session[:user_id], "session id was not set"
    get :destroy
    refute session[:user_id], "session id still exists"
    assert_redirected_to root_url, "did not redirect to root url"
  end

end
