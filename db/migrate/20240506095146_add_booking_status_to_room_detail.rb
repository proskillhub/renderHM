class AddBookingStatusToRoomDetail < ActiveRecord::Migration[7.1]
  def change
    add_column :room_details, :booking_status, :integer
  end
end
