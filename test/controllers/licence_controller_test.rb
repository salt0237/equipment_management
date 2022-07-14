require 'test_helper'

class LicenceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get licence_index_url
    assert_response :success
  end

end
