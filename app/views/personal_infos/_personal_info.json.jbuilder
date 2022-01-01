json.extract! personal_info, :id, :Name, :Phone, :Age, :Cibil_Score, :Nationality, :Net_Monthly_Income, :Desired_Loan_Amount, :created_at, :updated_at
json.url personal_info_url(personal_info, format: :json)
