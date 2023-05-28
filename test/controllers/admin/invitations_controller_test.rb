require "test_helper"

class Admin::InvitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_invitations_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_invitations_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_invitations_edit_url
    assert_response :success
  end

  test "should get new" do
    get admin_invitations_new_url
    assert_response :success
  end
end
