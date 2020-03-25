require 'test_helper'

class HospitalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hospital = hospitals(:one)
  end

  test "should get index" do
    get hospitals_url
    assert_response :success
  end

  test "should get new" do
    get new_hospital_url
    assert_response :success
  end

  test "should create hospital" do
    assert_difference('Hospital.count') do
      post hospitals_url, params: { hospital: { administrative_contact_email: @hospital.administrative_contact_email, administrative_contact_name: @hospital.administrative_contact_name, email: @hospital.email, full_address: @hospital.full_address, location: @hospital.location, name: @hospital.name, phone: @hospital.phone } }
    end

    assert_redirected_to hospital_url(Hospital.last)
  end

  test "should show hospital" do
    get hospital_url(@hospital)
    assert_response :success
  end

  test "should get edit" do
    get edit_hospital_url(@hospital)
    assert_response :success
  end

  test "should update hospital" do
    patch hospital_url(@hospital), params: { hospital: { administrative_contact_email: @hospital.administrative_contact_email, administrative_contact_name: @hospital.administrative_contact_name, email: @hospital.email, full_address: @hospital.full_address, location: @hospital.location, name: @hospital.name, phone: @hospital.phone } }
    assert_redirected_to hospital_url(@hospital)
  end

  test "should destroy hospital" do
    assert_difference('Hospital.count', -1) do
      delete hospital_url(@hospital)
    end

    assert_redirected_to hospitals_url
  end
end
