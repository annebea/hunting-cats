require 'test_helper'

class CatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cats_index_url
    assert_response :success
  end

  test "should get view" do
    get cats_view_url
    assert_response :success
  end

end
