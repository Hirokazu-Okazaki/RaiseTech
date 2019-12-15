require 'test_helper'

class CommunicationControllerTest < ActionDispatch::IntegrationTest
  test "should get communication_view" do
    get communication_communication_view_url
    assert_response :success
  end

end
