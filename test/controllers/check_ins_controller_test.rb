require "test_helper"

class CheckInsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get check_ins_new_url
    assert_response :success
  end
end
