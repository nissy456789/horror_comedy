require "test_helper"

class HorrorComedysControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get horror_comedys_top_url
    assert_response :success
  end
end
