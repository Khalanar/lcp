require "test_helper"

class BandMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @band_member = band_members(:one)
  end

  test "should get index" do
    get band_members_url
    assert_response :success
  end

  test "should get new" do
    get new_band_member_url
    assert_response :success
  end

  test "should create band_member" do
    assert_difference("BandMember.count") do
      post band_members_url, params: { band_member: { bio: @band_member.bio, name: @band_member.name, role: @band_member.role } }
    end

    assert_redirected_to band_member_url(BandMember.last)
  end

  test "should show band_member" do
    get band_member_url(@band_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_band_member_url(@band_member)
    assert_response :success
  end

  test "should update band_member" do
    patch band_member_url(@band_member), params: { band_member: { bio: @band_member.bio, name: @band_member.name, role: @band_member.role } }
    assert_redirected_to band_member_url(@band_member)
  end

  test "should destroy band_member" do
    assert_difference("BandMember.count", -1) do
      delete band_member_url(@band_member)
    end

    assert_redirected_to band_members_url
  end
end
