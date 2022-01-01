require "application_system_test_case"

class EducationDetailsTest < ApplicationSystemTestCase
  setup do
    @education_detail = education_details(:one)
  end

  test "visiting the index" do
    visit education_details_url
    assert_selector "h1", text: "Education Details"
  end

  test "creating a Education detail" do
    visit education_details_url
    click_on "New Education Detail"

    fill_in "Age", with: @education_detail.Age
    fill_in "Course", with: @education_detail.Course
    fill_in "Loan amount", with: @education_detail.Loan_Amount
    fill_in "Name", with: @education_detail.Name
    fill_in "Phone", with: @education_detail.Phone
    click_on "Create Education detail"

    assert_text "Education detail was successfully created"
    click_on "Back"
  end

  test "updating a Education detail" do
    visit education_details_url
    click_on "Edit", match: :first

    fill_in "Age", with: @education_detail.Age
    fill_in "Course", with: @education_detail.Course
    fill_in "Loan amount", with: @education_detail.Loan_Amount
    fill_in "Name", with: @education_detail.Name
    fill_in "Phone", with: @education_detail.Phone
    click_on "Update Education detail"

    assert_text "Education detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Education detail" do
    visit education_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Education detail was successfully destroyed"
  end
end
