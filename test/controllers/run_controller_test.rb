require 'test_helper'

class RunControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get run_index_url
    assert_response :success
  end

end
