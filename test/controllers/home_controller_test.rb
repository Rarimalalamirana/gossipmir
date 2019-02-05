require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get home_team_url
    assert_response :success
  end

  test "should get contact" do
    get home_contact_url
    assert_response :success
  end

end
