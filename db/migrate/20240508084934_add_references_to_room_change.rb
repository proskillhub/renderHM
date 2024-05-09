class AddReferencesToRoomChange < ActiveRecord::Migration[7.1]
  def change
    add_reference :change_rooms, :room_type, null: false, foreign_key: true
    add_reference :change_rooms, :room_detail, null: false, foreign_key: true
    add_reference :change_rooms, :check_in, null: false, foreign_key: true
  end
end
