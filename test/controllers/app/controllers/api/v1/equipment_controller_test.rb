require 'test_helper'

class App::Controllers::Api::V1::EquipmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_controllers_api_v1_equipment_index_url
    assert_response :success
  end

end
