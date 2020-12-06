require 'test_helper'

class BloodGulcoseReadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blood_gulcose_reading = blood_gulcose_readings(:one)
  end

  test "should get index" do
    get blood_gulcose_readings_url
    assert_response :success
  end

  test "should get new" do
    get new_blood_gulcose_reading_url
    assert_response :success
  end

  test "should create blood_gulcose_reading" do
    assert_difference('BloodGulcoseReading.count') do
      post blood_gulcose_readings_url, params: { blood_gulcose_reading: { reading_type: @blood_gulcose_reading.reading_type, user_id: @blood_gulcose_reading.user_id, value: @blood_gulcose_reading.value } }
    end

    assert_redirected_to blood_gulcose_reading_url(BloodGulcoseReading.last)
  end

  test "should show blood_gulcose_reading" do
    get blood_gulcose_reading_url(@blood_gulcose_reading)
    assert_response :success
  end

  test "should get edit" do
    get edit_blood_gulcose_reading_url(@blood_gulcose_reading)
    assert_response :success
  end

  test "should update blood_gulcose_reading" do
    patch blood_gulcose_reading_url(@blood_gulcose_reading), params: { blood_gulcose_reading: { reading_type: @blood_gulcose_reading.reading_type, user_id: @blood_gulcose_reading.user_id, value: @blood_gulcose_reading.value } }
    assert_redirected_to blood_gulcose_reading_url(@blood_gulcose_reading)
  end

  test "should destroy blood_gulcose_reading" do
    assert_difference('BloodGulcoseReading.count', -1) do
      delete blood_gulcose_reading_url(@blood_gulcose_reading)
    end

    assert_redirected_to blood_gulcose_readings_url
  end
end
