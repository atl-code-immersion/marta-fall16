require 'test_helper'

class TrainTrackerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get train_tracker_index_url
    assert_response :success
  end

end
