# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_18_060847) do

  create_table "applies", force: :cascade do |t|
    t.string "Name"
    t.integer "Age"
    t.string "City"
    t.string "Permanent_Address"
    t.string "Email_Id"
    t.integer "Phone"
    t.string "Loan_Type"
    t.string "Occupation"
    t.string "Nationality"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "car_infos", force: :cascade do |t|
    t.string "Name"
    t.integer "Age"
    t.integer "Phone"
    t.string "Nationality"
    t.integer "Annual_Income"
    t.integer "On_Road_Price_Of_Car"
    t.integer "Desired_Loan_Amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "credentials", force: :cascade do |t|
    t.string "Name"
    t.integer "Age"
    t.integer "Phone"
    t.string "Email"
    t.integer "Desired_Loan_Amt"
    t.integer "Net_Monthly"
    t.string "City"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "details", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.string "City"
    t.string "Email"
    t.integer "Desired_Loan_Amount"
    t.integer "Net_Monthly"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "education_details", force: :cascade do |t|
    t.string "Name"
    t.integer "Age"
    t.string "Course"
    t.integer "Phone"
    t.integer "Loan_Amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "education_infos", force: :cascade do |t|
    t.string "Name"
    t.string "Guardian_or_Parent_Name"
    t.integer "Phone"
    t.integer "Age_of_Student"
    t.string "Course_Name"
    t.integer "Duration_Of_Course_in_years"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "home_details", force: :cascade do |t|
    t.string "Name"
    t.integer "Age"
    t.integer "Phone"
    t.string "Nationality"
    t.integer "Desired_Loan"
    t.integer "Net_Monthly_Income"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "home_infos", force: :cascade do |t|
    t.string "Name"
    t.integer "Age"
    t.integer "Phone"
    t.integer "Cibil_Score"
    t.integer "Net_Monthly_Income"
    t.integer "Desired_Loan_Amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "infos", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.string "City"
    t.string "Email"
    t.string "Desired_Loan_Amount"
    t.string "Net_Monthly"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loancs", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.string "City"
    t.integer "Desired_Loan"
    t.integer "Net_monthly_income"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mortgage_infos", force: :cascade do |t|
    t.string "Name"
    t.integer "Age"
    t.integer "Phone"
    t.string "Nationality"
    t.integer "Cibil_Score"
    t.integer "Net_Monthly_Income"
    t.integer "Desired_Loan_Amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "p_eligs", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.integer "Age"
    t.integer "Nationality"
    t.integer "Desired_Loan_Amt"
    t.integer "Net_Monthly_Income"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personal_details", force: :cascade do |t|
    t.string "Name"
    t.integer "Age"
    t.integer "Phone"
    t.string "Nationality"
    t.integer "Desired_Loan"
    t.integer "Net_Monthly_Income"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personal_infos", force: :cascade do |t|
    t.string "Name"
    t.integer "Phone"
    t.integer "Age"
    t.integer "Cibil_Score"
    t.string "Nationality"
    t.integer "Net_Monthly_Income"
    t.integer "Desired_Loan_Amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.bigint "mobile"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
