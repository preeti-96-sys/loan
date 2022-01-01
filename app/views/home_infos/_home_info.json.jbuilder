json.extract! home_info, :id, :Name, :Age, :Phone, :Cibil_Score, :Net_Monthly_Income, :Desired_Loan_Amount, :created_at, :updated_at
json.url home_info_url(home_info, format: :json)
