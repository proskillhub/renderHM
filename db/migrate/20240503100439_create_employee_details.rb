class CreateEmployeeDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :employee_details do |t|
      t.string :employee_name
      t.string :parents_name
      t.string :contact_number_no
      t.string :identification_card
      t.string :designation
      t.date :joining_date

      t.timestamps
    end
  end
end
