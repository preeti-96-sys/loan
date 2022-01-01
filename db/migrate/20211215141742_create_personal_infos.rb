class CreatePersonalInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :personal_infos do |t|
      t.string :Name
      t.integer :Phone
      t.integer :Age
      t.integer :Cibil_Score
      t.string :Nationality
      t.integer :Net_Monthly_Income
      t.integer :Desired_Loan_Amount

      t.timestamps
    end
  end
end
