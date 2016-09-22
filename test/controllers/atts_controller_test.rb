require 'test_helper'

class AttsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @att = atts(:one)
  end

  test "should get index" do
    get atts_url
    assert_response :success
  end

  test "should get new" do
    get new_att_url
    assert_response :success
  end

  test "should create att" do
    assert_difference('Att.count') do
      post atts_url, params: { att: { attendance: @att.attendance } }
    end

    assert_redirected_to att_url(Att.last)
  end

  test "should show att" do
    get att_url(@att)
    assert_response :success
  end

  test "should get edit" do
    get edit_att_url(@att)
    assert_response :success
  end

  test "should update att" do
    patch att_url(@att), params: { att: { attendance: @att.attendance } }
    assert_redirected_to att_url(@att)
  end

  test "should destroy att" do
    assert_difference('Att.count', -1) do
      delete att_url(@att)
    end

    assert_redirected_to atts_url
  end
end
