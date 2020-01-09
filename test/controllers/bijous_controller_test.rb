require 'test_helper'

class BijousControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bijous_index_url
    assert_response :success
  end

  test "should get show" do
    get bijous_show_url
    assert_response :success
  end

end
