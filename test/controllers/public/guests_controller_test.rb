require "test_helper"

class Public::GuestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_guests_index_url
    assert_response :success
  end

  test "should get show" do
    get public_guests_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_guests_edit_url
    assert_response :success
  end

  test "should get new" do
    get public_guests_new_url
    assert_response :success
  end
end
