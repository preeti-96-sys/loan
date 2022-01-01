require "application_system_test_case"

class EducationInfosTest < ApplicationSystemTestCase
  setup do
    @education_info = education_infos(:one)
  end

  test "visiting the index" do
    visit education_infos_url
    assert_selector "h1", text: "Education Infos"
  end

  test "creating a Education info" do
    visit education_infos_url
    click_on "New Education Info"

    fill_in "Age of student", with: @education_info.Age_of_Student
    fill_in "Course name", with: @education_info.Course_Name
    fill_in "Duration of course in years", with: @education_info.Duration_Of_Course_in_years
    fill_in "Guardian or parent name", with: @education_info.Guardian_or_Parent_Name
    fill_in "Name", with: @education_info.Name
    fill_in "Phone", with: @education_info.Phone
    click_on "Create Education info"

    assert_text "Education info was successfully created"
    click_on "Back"
  end

  test "updating a Education info" do
    visit education_infos_url
    click_on "Edit", match: :first

    fill_in "Age of student", with: @education_info.Age_of_Student
    fill_in "Course name", with: @education_info.Course_Name
    fill_in "Duration of course in years", with: @education_info.Duration_Of_Course_in_years
    fill_in "Guardian or parent name", with: @education_info.Guardian_or_Parent_Name
    fill_in "Name", with: @education_info.Name
    fill_in "Phone", with: @education_info.Phone
    click_on "Update Education info"

    assert_text "Education info was successfully updated"
    click_on "Back"
  end

  test "destroying a Education info" do
    visit education_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education info was successfully destroyed"
  end
end
