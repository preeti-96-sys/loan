require "test_helper"

class EducationInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education_info = education_infos(:one)
  end

  test "should get index" do
    get education_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_education_info_url
    assert_response :success
  end

  test "should create education_info" do
    assert_difference('EducationInfo.count') do
      post education_infos_url, params: { education_info: { Age_of_Student: @education_info.Age_of_Student, Course_Name: @education_info.Course_Name, Duration_Of_Course_in_years: @education_info.Duration_Of_Course_in_years, Guardian_or_Parent_Name: @education_info.Guardian_or_Parent_Name, Name: @education_info.Name, Phone: @education_info.Phone } }
    end

    assert_redirected_to education_info_url(EducationInfo.last)
  end

  test "should show education_info" do
    get education_info_url(@education_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_education_info_url(@education_info)
    assert_response :success
  end

  test "should update education_info" do
    patch education_info_url(@education_info), params: { education_info: { Age_of_Student: @education_info.Age_of_Student, Course_Name: @education_info.Course_Name, Duration_Of_Course_in_years: @education_info.Duration_Of_Course_in_years, Guardian_or_Parent_Name: @education_info.Guardian_or_Parent_Name, Name: @education_info.Name, Phone: @education_info.Phone } }
    assert_redirected_to education_info_url(@education_info)
  end

  test "should destroy education_info" do
    assert_difference('EducationInfo.count', -1) do
      delete education_info_url(@education_info)
    end

    assert_redirected_to education_infos_url
  end
end
