require "application_system_test_case"

class BandMembersTest < ApplicationSystemTestCase
  setup do
    @band_member = band_members(:one)
  end

  test "visiting the index" do
    visit band_members_url
    assert_selector "h1", text: "Band members"
  end

  test "should create band member" do
    visit band_members_url
    click_on "New band member"

    fill_in "Bio", with: @band_member.bio
    fill_in "Name", with: @band_member.name
    fill_in "Role", with: @band_member.role
    click_on "Create Band member"

    assert_text "Band member was successfully created"
    click_on "Back"
  end

  test "should update Band member" do
    visit band_member_url(@band_member)
    click_on "Edit this band member", match: :first

    fill_in "Bio", with: @band_member.bio
    fill_in "Name", with: @band_member.name
    fill_in "Role", with: @band_member.role
    click_on "Update Band member"

    assert_text "Band member was successfully updated"
    click_on "Back"
  end

  test "should destroy Band member" do
    visit band_member_url(@band_member)
    click_on "Destroy this band member", match: :first

    assert_text "Band member was successfully destroyed"
  end
end
