require 'test_helper'

class ReactDemoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get react_demo_index_url
    assert_response :success
  end

end
