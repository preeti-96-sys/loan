json.extract! car_info, :id, :Name, :Age, :Phone, :Nationality, :Annual_Income, :On_Road_Price_Of_Car, :Desired_Loan_Amount, :created_at, :updated_at
json.url car_info_url(car_info, format: :json)
