require 'test_helper'

class ParksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @park = parks(:one)
  end

  test "should get index" do
    get parks_url
    assert_response :success
  end

  test "should get new" do
    get new_park_url
    assert_response :success
  end

  test "should create park" do
    assert_difference('Park.count') do
      post parks_url, params: { park: { description: @park.description, directions: @park.directions, directions_url: @park.directions_url, email: @park.email, fax: @park.fax, latitude: @park.latitude, longitude: @park.longitude, name: @park.name, park_code: @park.park_code, phone: @park.phone, state: @park.state, url: @park.url, weather: @park.weather } }
    end

    assert_redirected_to park_url(Park.last)
  end

  test "should show park" do
    get park_url(@park)
    assert_response :success
  end

  test "should get edit" do
    get edit_park_url(@park)
    assert_response :success
  end

  test "should update park" do
    patch park_url(@park), params: { park: { description: @park.description, directions: @park.directions, directions_url: @park.directions_url, email: @park.email, fax: @park.fax, latitude: @park.latitude, longitude: @park.longitude, name: @park.name, park_code: @park.park_code, phone: @park.phone, state: @park.state, url: @park.url, weather: @park.weather } }
    assert_redirected_to park_url(@park)
  end

  test "should destroy park" do
    assert_difference('Park.count', -1) do
      delete park_url(@park)
    end

    assert_redirected_to parks_url
  end
end
