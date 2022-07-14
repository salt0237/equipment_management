require 'test_helper'

class EquipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get equipments_index_url
    assert_response :success
  end

end
