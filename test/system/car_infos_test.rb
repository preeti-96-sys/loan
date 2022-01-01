require "application_system_test_case"

class CarInfosTest < ApplicationSystemTestCase
  setup do
    @car_info = car_infos(:one)
  end

  test "visiting the index" do
    visit car_infos_url
    assert_selector "h1", text: "Car Infos"
  end

  test "creating a Car info" do
    visit car_infos_url
    click_on "New Car Info"

    fill_in "Age", with: @car_info.Age
    fill_in "Annual income", with: @car_info.Annual_Income
    fill_in "Desired loan amount", with: @car_info.Desired_Loan_Amount
    fill_in "Name", with: @car_info.Name
    fill_in "Nationality", with: @car_info.Nationality
    fill_in "On road price of car", with: @car_info.On_Road_Price_Of_Car
    fill_in "Phone", with: @car_info.Phone
    click_on "Create Car info"

    assert_text "Car info was successfully created"
    click_on "Back"
  end

  test "updating a Car info" do
    visit car_infos_url
    click_on "Edit", match: :first

    fill_in "Age", with: @car_info.Age
    fill_in "Annual income", with: @car_info.Annual_Income
    fill_in "Desired loan amount", with: @car_info.Desired_Loan_Amount
    fill_in "Name", with: @car_info.Name
    fill_in "Nationality", with: @car_info.Nationality
    fill_in "On road price of car", with: @car_info.On_Road_Price_Of_Car
    fill_in "Phone", with: @car_info.Phone
    click_on "Update Car info"

    assert_text "Car info was successfully updated"
    click_on "Back"
  end

  test "destroying a Car info" do
    visit car_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car info was successfully destroyed"
  end
end
