require "application_system_test_case"

class PEligsTest < ApplicationSystemTestCase
  setup do
    @p_elig = p_eligs(:one)
  end

  test "visiting the index" do
    visit p_eligs_url
    assert_selector "h1", text: "P Eligs"
  end

  test "creating a P elig" do
    visit p_eligs_url
    click_on "New P Elig"

    fill_in "Age", with: @p_elig.Age
    fill_in "Desired loan amt", with: @p_elig.Desired_Loan_Amt
    fill_in "Name", with: @p_elig.Name
    fill_in "Nationality", with: @p_elig.Nationality
    fill_in "Net monthly income", with: @p_elig.Net_Monthly_Income
    fill_in "Phone", with: @p_elig.Phone
    click_on "Create P elig"

    assert_text "P elig was successfully created"
    click_on "Back"
  end

  test "updating a P elig" do
    visit p_eligs_url
    click_on "Edit", match: :first

    fill_in "Age", with: @p_elig.Age
    fill_in "Desired loan amt", with: @p_elig.Desired_Loan_Amt
    fill_in "Name", with: @p_elig.Name
    fill_in "Nationality", with: @p_elig.Nationality
    fill_in "Net monthly income", with: @p_elig.Net_Monthly_Income
    fill_in "Phone", with: @p_elig.Phone
    click_on "Update P elig"

    assert_text "P elig was successfully updated"
    click_on "Back"
  end

  test "destroying a P elig" do
    visit p_eligs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "P elig was successfully destroyed"
  end
end
