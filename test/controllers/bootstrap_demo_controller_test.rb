require 'test_helper'

class BootstrapDemoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bootstrap_demo_index_url
    assert_response :success
  end

end
