require 'test_helper'

class FurnituresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get furnitures_index_url
    assert_response :success
  end

end
