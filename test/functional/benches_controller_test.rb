require 'test_helper'
require 'factories/bench_factory'

class BenchesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "can add a bench" do
    assert_equal 0, Bench.count
    post :create, {:location_id => 1, :description => "some description" }
    assert_equal 1, Bench.count
    bench = assigns(:bench) # references @bench from the controller's action
    assert_redirected_to bench_path(bench)
  end

  test "should get show" do
    bench = assigns(:bench)
    get :show, {:id => bench.id }
    assert_response :success
  end
end
