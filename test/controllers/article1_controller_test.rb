require "test_helper"

class Article1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get article1_index_url
    assert_response :success
  end

  test "should get new" do
    get article1_new_url
    assert_response :success
  end
end
