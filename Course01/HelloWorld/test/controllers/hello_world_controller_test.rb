require 'test_helper'

class HelloWorldControllerTest < ActionDispatch::IntegrationTest
  test "should get hello_world_view" do
    get hello_world_hello_world_view_url
    assert_response :success
  end

end
