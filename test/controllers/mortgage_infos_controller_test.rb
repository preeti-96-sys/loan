require "test_helper"

class MortgageInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mortgage_info = mortgage_infos(:one)
  end

  test "should get index" do
    get mortgage_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_mortgage_info_url
    assert_response :success
  end

  test "should create mortgage_info" do
    assert_difference('MortgageInfo.count') do
      post mortgage_infos_url, params: { mortgage_info: { Age: @mortgage_info.Age, Cibil_Score: @mortgage_info.Cibil_Score, Desired_Loan_Amount: @mortgage_info.Desired_Loan_Amount, Name: @mortgage_info.Name, Nationality: @mortgage_info.Nationality, Net_Monthly_Income: @mortgage_info.Net_Monthly_Income, Phone: @mortgage_info.Phone } }
    end

    assert_redirected_to mortgage_info_url(MortgageInfo.last)
  end

  test "should show mortgage_info" do
    get mortgage_info_url(@mortgage_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_mortgage_info_url(@mortgage_info)
    assert_response :success
  end

  test "should update mortgage_info" do
    patch mortgage_info_url(@mortgage_info), params: { mortgage_info: { Age: @mortgage_info.Age, Cibil_Score: @mortgage_info.Cibil_Score, Desired_Loan_Amount: @mortgage_info.Desired_Loan_Amount, Name: @mortgage_info.Name, Nationality: @mortgage_info.Nationality, Net_Monthly_Income: @mortgage_info.Net_Monthly_Income, Phone: @mortgage_info.Phone } }
    assert_redirected_to mortgage_info_url(@mortgage_info)
  end

  test "should destroy mortgage_info" do
    assert_difference('MortgageInfo.count', -1) do
      delete mortgage_info_url(@mortgage_info)
    end

    assert_redirected_to mortgage_infos_url
  end
end
