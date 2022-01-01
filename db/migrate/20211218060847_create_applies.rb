class CreateApplies < ActiveRecord::Migration[6.1]
  def change
    create_table :applies do |t|
      t.string :Name
      t.integer :Age
      t.string :City
      t.string :Permanent_Address
      t.string :Email_Id
      t.integer :Phone
      t.string :Loan_Type
      t.string :Occupation
      t.string :Nationality

      t.timestamps
    end
  end
end
