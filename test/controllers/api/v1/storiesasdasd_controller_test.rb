require "test_helper"

class Api::V1::StoriesasdasdControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_storiesasdasd_index_url
    assert_response :success
  end
end
