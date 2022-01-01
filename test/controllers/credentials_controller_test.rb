require "test_helper"

class CredentialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @credential = credentials(:one)
  end

  test "should get index" do
    get credentials_url
    assert_response :success
  end

  test "should get new" do
    get new_credential_url
    assert_response :success
  end

  test "should create credential" do
    assert_difference('Credential.count') do
      post credentials_url, params: { credential: { Age: @credential.Age, City: @credential.City, Desired_Loan_Amt: @credential.Desired_Loan_Amt, Email: @credential.Email, Name: @credential.Name, Net_Monthly: @credential.Net_Monthly, Phone: @credential.Phone } }
    end

    assert_redirected_to credential_url(Credential.last)
  end

  test "should show credential" do
    get credential_url(@credential)
    assert_response :success
  end

  test "should get edit" do
    get edit_credential_url(@credential)
    assert_response :success
  end

  test "should update credential" do
    patch credential_url(@credential), params: { credential: { Age: @credential.Age, City: @credential.City, Desired_Loan_Amt: @credential.Desired_Loan_Amt, Email: @credential.Email, Name: @credential.Name, Net_Monthly: @credential.Net_Monthly, Phone: @credential.Phone } }
    assert_redirected_to credential_url(@credential)
  end

  test "should destroy credential" do
    assert_difference('Credential.count', -1) do
      delete credential_url(@credential)
    end

    assert_redirected_to credentials_url
  end
end
