require "test_helper"

class ScrapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scraps_index_url
    assert_response :success
  end
end
