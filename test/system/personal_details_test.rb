require "application_system_test_case"

class PersonalDetailsTest < ApplicationSystemTestCase
  setup do
    @personal_detail = personal_details(:one)
  end

  test "visiting the index" do
    visit personal_details_url
    assert_selector "h1", text: "Personal Details"
  end

  test "creating a Personal detail" do
    visit personal_details_url
    click_on "New Personal Detail"

    fill_in "Age", with: @personal_detail.Age
    fill_in "Cibil score", with: @personal_detail.Cibil_Score
    fill_in "Desired loan amount", with: @personal_detail.Desired_Loan_Amount
    fill_in "Name", with: @personal_detail.Name
    fill_in "Nationality", with: @personal_detail.Nationality
    fill_in "Net monthly income", with: @personal_detail.Net_Monthly_Income
    fill_in "Phone", with: @personal_detail.Phone
    click_on "Create Personal detail"

    assert_text "Personal detail was successfully created"
    click_on "Back"
  end

  test "updating a Personal detail" do
    visit personal_details_url
    click_on "Edit", match: :first

    fill_in "Age", with: @personal_detail.Age
    fill_in "Cibil score", with: @personal_detail.Cibil_Score
    fill_in "Desired loan amount", with: @personal_detail.Desired_Loan_Amount
    fill_in "Name", with: @personal_detail.Name
    fill_in "Nationality", with: @personal_detail.Nationality
    fill_in "Net monthly income", with: @personal_detail.Net_Monthly_Income
    fill_in "Phone", with: @personal_detail.Phone
    click_on "Update Personal detail"

    assert_text "Personal detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal detail" do
    visit personal_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal detail was successfully destroyed"
  end
end
