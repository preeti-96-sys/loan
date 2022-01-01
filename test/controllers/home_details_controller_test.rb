require "test_helper"

class HomeDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_detail = home_details(:one)
  end

  test "should get index" do
    get home_details_url
    assert_response :success
  end

  test "should get new" do
    get new_home_detail_url
    assert_response :success
  end

  test "should create home_detail" do
    assert_difference('HomeDetail.count') do
      post home_details_url, params: { home_detail: { Age: @home_detail.Age, Desired_Loan: @home_detail.Desired_Loan, Name: @home_detail.Name, Nationality: @home_detail.Nationality, Net_Monthly_Income: @home_detail.Net_Monthly_Income, Phone: @home_detail.Phone } }
    end

    assert_redirected_to home_detail_url(HomeDetail.last)
  end

  test "should show home_detail" do
    get home_detail_url(@home_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_detail_url(@home_detail)
    assert_response :success
  end

  test "should update home_detail" do
    patch home_detail_url(@home_detail), params: { home_detail: { Age: @home_detail.Age, Desired_Loan: @home_detail.Desired_Loan, Name: @home_detail.Name, Nationality: @home_detail.Nationality, Net_Monthly_Income: @home_detail.Net_Monthly_Income, Phone: @home_detail.Phone } }
    assert_redirected_to home_detail_url(@home_detail)
  end

  test "should destroy home_detail" do
    assert_difference('HomeDetail.count', -1) do
      delete home_detail_url(@home_detail)
    end

    assert_redirected_to home_details_url
  end
end
