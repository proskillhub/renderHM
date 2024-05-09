class RoomDetail < ApplicationRecord
  
  enum roomstatus: { dirty: 0, clean: 1 }
  enum booking_status: {
    available: 0,  # This should match the expected value
    booked: 1,
    reserved: 2,
    maintenance: 3
  }
  belongs_to :room_type
  has_many :change_rooms
end
