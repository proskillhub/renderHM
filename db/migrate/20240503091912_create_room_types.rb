class CreateRoomTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :room_types do |t|
      t.string :room_type

      t.timestamps
    end
  end
end
