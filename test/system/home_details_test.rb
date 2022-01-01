require "application_system_test_case"

class HomeDetailsTest < ApplicationSystemTestCase
  setup do
    @home_detail = home_details(:one)
  end

  test "visiting the index" do
    visit home_details_url
    assert_selector "h1", text: "Home Details"
  end

  test "creating a Home detail" do
    visit home_details_url
    click_on "New Home Detail"

    fill_in "Age", with: @home_detail.Age
    fill_in "Desired loan", with: @home_detail.Desired_Loan
    fill_in "Name", with: @home_detail.Name
    fill_in "Nationality", with: @home_detail.Nationality
    fill_in "Net monthly income", with: @home_detail.Net_Monthly_Income
    fill_in "Phone", with: @home_detail.Phone
    click_on "Create Home detail"

    assert_text "Home detail was successfully created"
    click_on "Back"
  end

  test "updating a Home detail" do
    visit home_details_url
    click_on "Edit", match: :first

    fill_in "Age", with: @home_detail.Age
    fill_in "Desired loan", with: @home_detail.Desired_Loan
    fill_in "Name", with: @home_detail.Name
    fill_in "Nationality", with: @home_detail.Nationality
    fill_in "Net monthly income", with: @home_detail.Net_Monthly_Income
    fill_in "Phone", with: @home_detail.Phone
    click_on "Update Home detail"

    assert_text "Home detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Home detail" do
    visit home_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home detail was successfully destroyed"
  end
end
