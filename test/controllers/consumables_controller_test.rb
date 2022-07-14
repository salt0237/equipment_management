require 'test_helper'

class ConsumablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get consumables_index_url
    assert_response :success
  end

end
