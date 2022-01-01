require "application_system_test_case"

class MortgageInfosTest < ApplicationSystemTestCase
  setup do
    @mortgage_info = mortgage_infos(:one)
  end

  test "visiting the index" do
    visit mortgage_infos_url
    assert_selector "h1", text: "Mortgage Infos"
  end

  test "creating a Mortgage info" do
    visit mortgage_infos_url
    click_on "New Mortgage Info"

    fill_in "Age", with: @mortgage_info.Age
    fill_in "Cibil score", with: @mortgage_info.Cibil_Score
    fill_in "Desired loan amount", with: @mortgage_info.Desired_Loan_Amount
    fill_in "Name", with: @mortgage_info.Name
    fill_in "Nationality", with: @mortgage_info.Nationality
    fill_in "Net monthly income", with: @mortgage_info.Net_Monthly_Income
    fill_in "Phone", with: @mortgage_info.Phone
    click_on "Create Mortgage info"

    assert_text "Mortgage info was successfully created"
    click_on "Back"
  end

  test "updating a Mortgage info" do
    visit mortgage_infos_url
    click_on "Edit", match: :first

    fill_in "Age", with: @mortgage_info.Age
    fill_in "Cibil score", with: @mortgage_info.Cibil_Score
    fill_in "Desired loan amount", with: @mortgage_info.Desired_Loan_Amount
    fill_in "Name", with: @mortgage_info.Name
    fill_in "Nationality", with: @mortgage_info.Nationality
    fill_in "Net monthly income", with: @mortgage_info.Net_Monthly_Income
    fill_in "Phone", with: @mortgage_info.Phone
    click_on "Update Mortgage info"

    assert_text "Mortgage info was successfully updated"
    click_on "Back"
  end

  test "destroying a Mortgage info" do
    visit mortgage_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mortgage info was successfully destroyed"
  end
end
