require 'test_helper'

class LocationsControllerTest < ActionController::TestCase

  test "should get new" do
    get :new
    assert_response :success
  end

  test "can add a location" do
    assert_equal 0, Location.count
    post :create, {:name => 'horsham', :details => 'in the middle of the street'}
    assert_equal 1, Location.count
    assert_redirected_to locations_path
  end

end

