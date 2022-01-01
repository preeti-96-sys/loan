json.extract! education_info, :id, :Name, :Guardian_or_Parent_Name, :Phone, :Age_of_Student, :Course_Name, :Duration_Of_Course_in_years, :created_at, :updated_at
json.url education_info_url(education_info, format: :json)
