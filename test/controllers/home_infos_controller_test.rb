require "test_helper"

class HomeInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_info = home_infos(:one)
  end

  test "should get index" do
    get home_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_home_info_url
    assert_response :success
  end

  test "should create home_info" do
    assert_difference('HomeInfo.count') do
      post home_infos_url, params: { home_info: { Age: @home_info.Age, Cibil_Score: @home_info.Cibil_Score, Desired_Loan_Amount: @home_info.Desired_Loan_Amount, Name: @home_info.Name, Net_Monthly_Income: @home_info.Net_Monthly_Income, Phone: @home_info.Phone } }
    end

    assert_redirected_to home_info_url(HomeInfo.last)
  end

  test "should show home_info" do
    get home_info_url(@home_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_info_url(@home_info)
    assert_response :success
  end

  test "should update home_info" do
    patch home_info_url(@home_info), params: { home_info: { Age: @home_info.Age, Cibil_Score: @home_info.Cibil_Score, Desired_Loan_Amount: @home_info.Desired_Loan_Amount, Name: @home_info.Name, Net_Monthly_Income: @home_info.Net_Monthly_Income, Phone: @home_info.Phone } }
    assert_redirected_to home_info_url(@home_info)
  end

  test "should destroy home_info" do
    assert_difference('HomeInfo.count', -1) do
      delete home_info_url(@home_info)
    end

    assert_redirected_to home_infos_url
  end
end
