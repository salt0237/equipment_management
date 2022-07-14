require 'test_helper'

class MachineListNewControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get machine_list_new_index_url
    assert_response :success
  end

end
