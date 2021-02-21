require "application_system_test_case"

class ParksTest < ApplicationSystemTestCase
  setup do
    @park = parks(:one)
  end

  test "visiting the index" do
    visit parks_url
    assert_selector "h1", text: "Parks"
  end

  test "creating a Park" do
    visit parks_url
    click_on "New Park"

    fill_in "Description", with: @park.description
    fill_in "Directions", with: @park.directions
    fill_in "Directions url", with: @park.directions_url
    fill_in "Email", with: @park.email
    fill_in "Fax", with: @park.fax
    fill_in "Latitude", with: @park.latitude
    fill_in "Longitude", with: @park.longitude
    fill_in "Name", with: @park.name
    fill_in "Park code", with: @park.park_code
    fill_in "Phone", with: @park.phone
    fill_in "State", with: @park.state
    fill_in "Url", with: @park.url
    fill_in "Weather", with: @park.weather
    click_on "Create Park"

    assert_text "Park was successfully created"
    click_on "Back"
  end

  test "updating a Park" do
    visit parks_url
    click_on "Edit", match: :first

    fill_in "Description", with: @park.description
    fill_in "Directions", with: @park.directions
    fill_in "Directions url", with: @park.directions_url
    fill_in "Email", with: @park.email
    fill_in "Fax", with: @park.fax
    fill_in "Latitude", with: @park.latitude
    fill_in "Longitude", with: @park.longitude
    fill_in "Name", with: @park.name
    fill_in "Park code", with: @park.park_code
    fill_in "Phone", with: @park.phone
    fill_in "State", with: @park.state
    fill_in "Url", with: @park.url
    fill_in "Weather", with: @park.weather
    click_on "Update Park"

    assert_text "Park was successfully updated"
    click_on "Back"
  end

  test "destroying a Park" do
    visit parks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Park was successfully destroyed"
  end
end
