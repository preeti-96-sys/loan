require "test_helper"

class PEligsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @p_elig = p_eligs(:one)
  end

  test "should get index" do
    get p_eligs_url
    assert_response :success
  end

  test "should get new" do
    get new_p_elig_url
    assert_response :success
  end

  test "should create p_elig" do
    assert_difference('PElig.count') do
      post p_eligs_url, params: { p_elig: { Age: @p_elig.Age, Desired_Loan_Amt: @p_elig.Desired_Loan_Amt, Name: @p_elig.Name, Nationality: @p_elig.Nationality, Net_Monthly_Income: @p_elig.Net_Monthly_Income, Phone: @p_elig.Phone } }
    end

    assert_redirected_to p_elig_url(PElig.last)
  end

  test "should show p_elig" do
    get p_elig_url(@p_elig)
    assert_response :success
  end

  test "should get edit" do
    get edit_p_elig_url(@p_elig)
    assert_response :success
  end

  test "should update p_elig" do
    patch p_elig_url(@p_elig), params: { p_elig: { Age: @p_elig.Age, Desired_Loan_Amt: @p_elig.Desired_Loan_Amt, Name: @p_elig.Name, Nationality: @p_elig.Nationality, Net_Monthly_Income: @p_elig.Net_Monthly_Income, Phone: @p_elig.Phone } }
    assert_redirected_to p_elig_url(@p_elig)
  end

  test "should destroy p_elig" do
    assert_difference('PElig.count', -1) do
      delete p_elig_url(@p_elig)
    end

    assert_redirected_to p_eligs_url
  end
end
