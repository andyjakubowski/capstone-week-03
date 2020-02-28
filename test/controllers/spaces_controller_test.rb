require 'test_helper'

class SpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get spaces_show_url
    assert_response :success
  end

end
