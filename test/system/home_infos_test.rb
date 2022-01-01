require "application_system_test_case"

class HomeInfosTest < ApplicationSystemTestCase
  setup do
    @home_info = home_infos(:one)
  end

  test "visiting the index" do
    visit home_infos_url
    assert_selector "h1", text: "Home Infos"
  end

  test "creating a Home info" do
    visit home_infos_url
    click_on "New Home Info"

    fill_in "Age", with: @home_info.Age
    fill_in "Cibil score", with: @home_info.Cibil_Score
    fill_in "Desired loan amount", with: @home_info.Desired_Loan_Amount
    fill_in "Name", with: @home_info.Name
    fill_in "Net monthly income", with: @home_info.Net_Monthly_Income
    fill_in "Phone", with: @home_info.Phone
    click_on "Create Home info"

    assert_text "Home info was successfully created"
    click_on "Back"
  end

  test "updating a Home info" do
    visit home_infos_url
    click_on "Edit", match: :first

    fill_in "Age", with: @home_info.Age
    fill_in "Cibil score", with: @home_info.Cibil_Score
    fill_in "Desired loan amount", with: @home_info.Desired_Loan_Amount
    fill_in "Name", with: @home_info.Name
    fill_in "Net monthly income", with: @home_info.Net_Monthly_Income
    fill_in "Phone", with: @home_info.Phone
    click_on "Update Home info"

    assert_text "Home info was successfully updated"
    click_on "Back"
  end

  test "destroying a Home info" do
    visit home_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home info was successfully destroyed"
  end
end
