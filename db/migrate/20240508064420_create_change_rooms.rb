class CreateChangeRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :change_rooms do |t|
      t.string :room_no
      t.string :room_type
      t.decimal :rent_per_day
      t.text :reason

      t.timestamps
    end
  end
end
