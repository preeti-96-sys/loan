class CreateHomeInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :home_infos do |t|
      t.string :Name
      t.integer :Age
      t.integer :Phone
      t.integer :Cibil_Score
      t.integer :Net_Monthly_Income
      t.integer :Desired_Loan_Amount

      t.timestamps
    end
  end
end
