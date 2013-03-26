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
    bench = BenchFactory.bench
    post :create, {:location_id => bench.location_id, :description => bench.description, :image => bench.image}
    assert_equal 1, Bench.count
    assert_redirected_to benches_path
  end

end
