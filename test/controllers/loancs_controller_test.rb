require "test_helper"

class LoancsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loanc = loancs(:one)
  end

  test "should get index" do
    get loancs_url
    assert_response :success
  end

  test "should get new" do
    get new_loanc_url
    assert_response :success
  end

  test "should create loanc" do
    assert_difference('Loanc.count') do
      post loancs_url, params: { loanc: { City: @loanc.City, Desired_Loan: @loanc.Desired_Loan, Name: @loanc.Name, Net_monthly_income: @loanc.Net_monthly_income, Phone: @loanc.Phone } }
    end

    assert_redirected_to loanc_url(Loanc.last)
  end

  test "should show loanc" do
    get loanc_url(@loanc)
    assert_response :success
  end

  test "should get edit" do
    get edit_loanc_url(@loanc)
    assert_response :success
  end

  test "should update loanc" do
    patch loanc_url(@loanc), params: { loanc: { City: @loanc.City, Desired_Loan: @loanc.Desired_Loan, Name: @loanc.Name, Net_monthly_income: @loanc.Net_monthly_income, Phone: @loanc.Phone } }
    assert_redirected_to loanc_url(@loanc)
  end

  test "should destroy loanc" do
    assert_difference('Loanc.count', -1) do
      delete loanc_url(@loanc)
    end

    assert_redirected_to loancs_url
  end
end
