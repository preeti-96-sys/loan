class CreateCarInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :car_infos do |t|
      t.string :Name
      t.integer :Age
      t.integer :Phone
      t.string :Nationality
      t.integer :Annual_Income
      t.integer :On_Road_Price_Of_Car
      t.integer :Desired_Loan_Amount

      t.timestamps
    end
  end
end
