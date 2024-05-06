class RoomDetail < ApplicationRecord
  belongs_to :room_type
  enum roomstatus: { dirty: 0, clean: 1 }
  enum booking_status: {
    available: 0,  # This should match the expected value
    booked: 1,
    reserved: 2,
    maintenance: 3
  }
end
