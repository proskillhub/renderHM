class CreateCheckIns < ActiveRecord::Migration[7.1]
  def change
    create_table :check_ins do |t|
      t.string :guest_id
      t.string :guest_name
      t.string :address
      t.integer :phone_number
      t.string :id_type
      t.string :id_number
      t.string :gender
      t.string :purpose
      t.datetime :arrival_and_departure
      t.string :note
      t.datetime :check_in_date
      t.time :check_in_time
      t.integer :no_of_day
      t.datetime :check_out_date
      t.datetime :check_out_time
      t.decimal :total_charges
      t.integer :number_of_adults
      t.integer :number_of_children
      t.references :bed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
