class AddRoomstatusToRoomDetails < ActiveRecord::Migration[7.1]
  def change
    add_column :room_details, :roomstatus, :integer
  end
end
