class CreateEducationInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :education_infos do |t|
      t.string :Name
      t.string :Guardian_or_Parent_Name
      t.integer :Phone
      t.integer :Age_of_Student
      t.string :Course_Name
      t.integer :Duration_Of_Course_in_years

      t.timestamps
    end
  end
end
