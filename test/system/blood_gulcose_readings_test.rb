require "application_system_test_case"

class BloodGulcoseReadingsTest < ApplicationSystemTestCase
  setup do
    @blood_gulcose_reading = blood_gulcose_readings(:one)
  end

  test "visiting the index" do
    visit blood_gulcose_readings_url
    assert_selector "h1", text: "Blood Gulcose Readings"
  end

  test "creating a Blood gulcose reading" do
    visit blood_gulcose_readings_url
    click_on "New Blood Gulcose Reading"

    fill_in "Reading type", with: @blood_gulcose_reading.reading_type
    fill_in "User", with: @blood_gulcose_reading.user_id
    fill_in "Value", with: @blood_gulcose_reading.value
    click_on "Create Blood gulcose reading"

    assert_text "Blood gulcose reading was successfully created"
    click_on "Back"
  end

  test "updating a Blood gulcose reading" do
    visit blood_gulcose_readings_url
    click_on "Edit", match: :first

    fill_in "Reading type", with: @blood_gulcose_reading.reading_type
    fill_in "User", with: @blood_gulcose_reading.user_id
    fill_in "Value", with: @blood_gulcose_reading.value
    click_on "Update Blood gulcose reading"

    assert_text "Blood gulcose reading was successfully updated"
    click_on "Back"
  end

  test "destroying a Blood gulcose reading" do
    visit blood_gulcose_readings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blood gulcose reading was successfully destroyed"
  end
end
