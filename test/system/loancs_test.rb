require "application_system_test_case"

class LoancsTest < ApplicationSystemTestCase
  setup do
    @loanc = loancs(:one)
  end

  test "visiting the index" do
    visit loancs_url
    assert_selector "h1", text: "Loancs"
  end

  test "creating a Loanc" do
    visit loancs_url
    click_on "New Loanc"

    fill_in "City", with: @loanc.City
    fill_in "Desired loan", with: @loanc.Desired_Loan
    fill_in "Name", with: @loanc.Name
    fill_in "Net monthly income", with: @loanc.Net_monthly_income
    fill_in "Phone", with: @loanc.Phone
    click_on "Create Loanc"

    assert_text "Loanc was successfully created"
    click_on "Back"
  end

  test "updating a Loanc" do
    visit loancs_url
    click_on "Edit", match: :first

    fill_in "City", with: @loanc.City
    fill_in "Desired loan", with: @loanc.Desired_Loan
    fill_in "Name", with: @loanc.Name
    fill_in "Net monthly income", with: @loanc.Net_monthly_income
    fill_in "Phone", with: @loanc.Phone
    click_on "Update Loanc"

    assert_text "Loanc was successfully updated"
    click_on "Back"
  end

  test "destroying a Loanc" do
    visit loancs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loanc was successfully destroyed"
  end
end
