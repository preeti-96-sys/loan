require "application_system_test_case"

class CredentialsTest < ApplicationSystemTestCase
  setup do
    @credential = credentials(:one)
  end

  test "visiting the index" do
    visit credentials_url
    assert_selector "h1", text: "Credentials"
  end

  test "creating a Credential" do
    visit credentials_url
    click_on "New Credential"

    fill_in "Age", with: @credential.Age
    fill_in "City", with: @credential.City
    fill_in "Desired loan amt", with: @credential.Desired_Loan_Amt
    fill_in "Email", with: @credential.Email
    fill_in "Name", with: @credential.Name
    fill_in "Net monthly", with: @credential.Net_Monthly
    fill_in "Phone", with: @credential.Phone
    click_on "Create Credential"

    assert_text "Credential was successfully created"
    click_on "Back"
  end

  test "updating a Credential" do
    visit credentials_url
    click_on "Edit", match: :first

    fill_in "Age", with: @credential.Age
    fill_in "City", with: @credential.City
    fill_in "Desired loan amt", with: @credential.Desired_Loan_Amt
    fill_in "Email", with: @credential.Email
    fill_in "Name", with: @credential.Name
    fill_in "Net monthly", with: @credential.Net_Monthly
    fill_in "Phone", with: @credential.Phone
    click_on "Update Credential"

    assert_text "Credential was successfully updated"
    click_on "Back"
  end

  test "destroying a Credential" do
    visit credentials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Credential was successfully destroyed"
  end
end
