require "test_helper"

class ModelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get model_index_url
    assert_response :success
  end

  test "should get new" do
    get model_new_url
    assert_response :success
  end
end
