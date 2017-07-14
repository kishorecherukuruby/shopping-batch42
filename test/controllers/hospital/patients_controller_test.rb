require 'test_helper'

class Hospital::PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hospital_patients_new_url
    assert_response :success
  end

  test "should get create" do
    get hospital_patients_create_url
    assert_response :success
  end

  test "should get index" do
    get hospital_patients_index_url
    assert_response :success
  end

  test "should get show" do
    get hospital_patients_show_url
    assert_response :success
  end

  test "should get edit" do
    get hospital_patients_edit_url
    assert_response :success
  end

  test "should get update" do
    get hospital_patients_update_url
    assert_response :success
  end

  test "should get delete" do
    get hospital_patients_delete_url
    assert_response :success
  end

end
