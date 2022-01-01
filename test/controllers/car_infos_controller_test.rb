require "test_helper"

class CarInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_info = car_infos(:one)
  end

  test "should get index" do
    get car_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_car_info_url
    assert_response :success
  end

  test "should create car_info" do
    assert_difference('CarInfo.count') do
      post car_infos_url, params: { car_info: { Age: @car_info.Age, Annual_Income: @car_info.Annual_Income, Desired_Loan_Amount: @car_info.Desired_Loan_Amount, Name: @car_info.Name, Nationality: @car_info.Nationality, On_Road_Price_Of_Car: @car_info.On_Road_Price_Of_Car, Phone: @car_info.Phone } }
    end

    assert_redirected_to car_info_url(CarInfo.last)
  end

  test "should show car_info" do
    get car_info_url(@car_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_info_url(@car_info)
    assert_response :success
  end

  test "should update car_info" do
    patch car_info_url(@car_info), params: { car_info: { Age: @car_info.Age, Annual_Income: @car_info.Annual_Income, Desired_Loan_Amount: @car_info.Desired_Loan_Amount, Name: @car_info.Name, Nationality: @car_info.Nationality, On_Road_Price_Of_Car: @car_info.On_Road_Price_Of_Car, Phone: @car_info.Phone } }
    assert_redirected_to car_info_url(@car_info)
  end

  test "should destroy car_info" do
    assert_difference('CarInfo.count', -1) do
      delete car_info_url(@car_info)
    end

    assert_redirected_to car_infos_url
  end
end
