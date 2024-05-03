class CreateRoomDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :room_details do |t|
      t.integer :room_no
      t.decimal :rent_per_day
      t.references :room_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
