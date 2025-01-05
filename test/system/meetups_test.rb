require "application_system_test_case"

class MeetupsTest < ApplicationSystemTestCase
  setup do
    @meetup = meetups(:one)
  end

  test "visiting the index" do
    visit meetups_url
    assert_selector "h1", text: "Meetups"
  end

  test "should create meetup" do
    visit meetups_url
    click_on "New meetup"

    fill_in "Address", with: @meetup.address
    fill_in "Business name", with: @meetup.business_name
    fill_in "Event date", with: @meetup.event_date
    fill_in "Name", with: @meetup.name
    fill_in "User", with: @meetup.user_id
    click_on "Create Meetup"

    assert_text "Meetup was successfully created"
    click_on "Back"
  end

  test "should update Meetup" do
    visit meetup_url(@meetup)
    click_on "Edit this meetup", match: :first

    fill_in "Address", with: @meetup.address
    fill_in "Business name", with: @meetup.business_name
    fill_in "Event date", with: @meetup.event_date.to_s
    fill_in "Name", with: @meetup.name
    fill_in "User", with: @meetup.user_id
    click_on "Update Meetup"

    assert_text "Meetup was successfully updated"
    click_on "Back"
  end

  test "should destroy Meetup" do
    visit meetup_url(@meetup)
    click_on "Destroy this meetup", match: :first

    assert_text "Meetup was successfully destroyed"
  end
end
