json.extract! mortgage_info, :id, :Name, :Age, :Phone, :Nationality, :Cibil_Score, :Net_Monthly_Income, :Desired_Loan_Amount, :created_at, :updated_at
json.url mortgage_info_url(mortgage_info, format: :json)
